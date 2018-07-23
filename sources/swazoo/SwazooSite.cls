"Filed out from Dolphin Smalltalk 7"!

CompositeResource subclass: #SwazooSite
	instanceVariableNames: 'name serving'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooSite guid: (GUID fromString: '{cfadae2d-9cfb-4b24-a3b2-604ea491a355}')!
SwazooSite comment: 'Site : Swazoo can serve many sites at once (virtual sites). Class Site is therefore a main class to start configuring your server. It holds an IP, port and hostname of your site.'!
!SwazooSite categoriesForClass!Unclassified! !
!SwazooSite methodsFor!

addAlias: anAlias 
	self ip isNil "initial uriPattern not yet setup"
		ifTrue: [self host: anAlias host ip: anAlias ip port: anAlias port]
		ifFalse: [self uriPattern add: anAlias]!

aliases
	^self uriPattern!

compile: tag 
	^SwazooCompiler evaluate: tag!

helpResolve: aResolution 
	^aResolution resolveSite: self!

host
	"hostname of this site. Example: www.ibm.com. 
	hostname must be unique on that server.
	Don't mix with ip, which also can be something like www.ibm.com. 
	There can be many sites with different hostnames on the same ip !! "
	self uriPattern isEmpty ifTrue: [^''].
	^self uriPattern first host!

host: aString
	self uriPattern first host: aString!

host: aHostString ip: anIPString port: aNumber 
	"see comments in methods host and ip !! "
	"hostname must be unique!! "
	| site |
	site := SwazooServer singleton siteHostnamed: aHostString.
	(site notNil and: [site ~= self])
		ifTrue: [^SwazooSiteError error: 'Site with that hostname already exist!!'].
	self uriPattern isEmpty ifTrue: [self uriPattern add: SiteIdentifier new].
	self uriPattern first 
		setIp: anIPString
		port: aNumber
		host: aHostString!

host: aHostString port: aNumber 
	"run on all ip interfaces on specified port"
	"hostname must be unique!! "
	self host: aHostString ip: '*' port: aNumber!

initialize
	super initialize.
	self stop. "in case you initialize working site"
	self initUriPattern!

initUriPattern
	self uriPattern: OrderedCollection new.
	self uriPattern add: SiteIdentifier new.!

ip
	"IP address of this site. Swazoo can have virtual sites, that is, more than one 
	site can share the same ip and port!!
	IP can be a number or full DNS name. For example: server.ibm.com or 234.12.45.66"
	^self uriPattern first ip!

ip: aString
	self uriPattern first  ip: aString!

isRootPath
	^false!

isServing
	"is this site on-line?"
	^serving notNil and: [serving]!

match: aSiteIdentifier 
	self uriPattern detect: [:each | each match: aSiteIdentifier]
		ifNone: [^false].
	^true!

name
	"a short name of that site. Example: for host www.ibm.com, name it ibm"
	name isNil ifTrue: [^''].
	^name!

name: aString
	"a short name of that site. Example: for host www.ibm.com, name it ibm"
	"name must be unique"
	(SwazooServer singleton siteNamed: aString) notNil 
		ifTrue: [^SwazooSiteError error: 'Site with that name already exist!!'].
	name := aString!

nextTagFrom: aStream 
	aStream upTo: $<.
	^aStream atEnd ifTrue: [nil] ifFalse: [aStream upTo: $>]!

onAllInterfaces
	"site is running on all machine's IP interfaces"
	^self ip = '*' or: [self ip = '0.0.0.0']!

onAnyHost
	"site don't care about host name during url resolution"
	^self host = '*'!

port
	^self uriPattern first port!

port: aNumber
	self uriPattern first port: aNumber!

printUrlOn: aWriteStream 
	self uriPattern first printUrlOn: aWriteStream!

readCompositeFrom: aStream storingInto: aComposite 
	| tag |
	
	[tag := self nextTagFrom: aStream.
	tag = '/CompositeResource']
		whileFalse: 
			[| thingy |
			thingy := self compile: tag.
			aComposite addResource: thingy.
			(thingy isKindOf: CompositeResource)
				ifTrue: [self readCompositeFrom: aStream storingInto: thingy]]!

readFrom: aStream 
	"read configuration from an XML file, see sites.cnf"
	| tag |
	tag := self nextTagFrom: aStream.
	tag isNil ifTrue: [^nil].
	tag = 'Site' ifFalse: [^SwazooSiteError error: 'invalid site specification!!'].
	[tag := self nextTagFrom: aStream.
	tag = '/Site'] 	whileFalse: 
			[| thingy |
			thingy := self compile: tag.
			(thingy isKindOf: SiteIdentifier)
				ifTrue: [self addAlias: thingy]
				ifFalse: 
					[self addResource: thingy.
					(thingy isKindOf: CompositeResource) 
						ifTrue: [self readCompositeFrom: aStream storingInto: thingy]]]!

serving: aBoolean
	serving := aBoolean!

start
	| swazoo |
	swazoo := SwazooServer singleton.
	[self aliases do: [:each | | httpServer |
		httpServer := swazoo serverFor: each. "it will also create and start it if needed"
		httpServer addSite: self]
	] ifCurtailed: [self stop].
	self serving: true.!

stop
	| swazoo |
	swazoo := SwazooServer singleton.
	self aliases do: [:each | | httpServer |
		httpServer := swazoo serverFor: each.
		(swazoo servers includes: httpServer) 
			ifTrue: 
				[httpServer removeSite: self.
				httpServer hasNoSites ifTrue: 
					[swazoo removeServer: httpServer.
					httpServer stop]]].
		self serving: false.!

uriPattern
	uriPattern isNil ifTrue: [self initUriPattern].
	^uriPattern!

watchdogAction
	"override in your subclass"! !
!SwazooSite categoriesFor: #addAlias:!accessing!public! !
!SwazooSite categoriesFor: #aliases!accessing!public! !
!SwazooSite categoriesFor: #compile:!config-from-file!public! !
!SwazooSite categoriesFor: #helpResolve:!private! !
!SwazooSite categoriesFor: #host!accessing!public! !
!SwazooSite categoriesFor: #host:!private! !
!SwazooSite categoriesFor: #host:ip:port:!accessing!public! !
!SwazooSite categoriesFor: #host:port:!accessing!public! !
!SwazooSite categoriesFor: #initialize!initialize-release!public! !
!SwazooSite categoriesFor: #initUriPattern!initialize-release!public! !
!SwazooSite categoriesFor: #ip!accessing!public! !
!SwazooSite categoriesFor: #ip:!private! !
!SwazooSite categoriesFor: #isRootPath!public!testing! !
!SwazooSite categoriesFor: #isServing!public!testing! !
!SwazooSite categoriesFor: #match:!private! !
!SwazooSite categoriesFor: #name!accessing!public! !
!SwazooSite categoriesFor: #name:!accessing!public! !
!SwazooSite categoriesFor: #nextTagFrom:!config-from-file!public! !
!SwazooSite categoriesFor: #onAllInterfaces!public!testing! !
!SwazooSite categoriesFor: #onAnyHost!public!testing! !
!SwazooSite categoriesFor: #port!accessing!public! !
!SwazooSite categoriesFor: #port:!private! !
!SwazooSite categoriesFor: #printUrlOn:!private! !
!SwazooSite categoriesFor: #readCompositeFrom:storingInto:!config-from-file!public! !
!SwazooSite categoriesFor: #readFrom:!config-from-file!public! !
!SwazooSite categoriesFor: #serving:!private! !
!SwazooSite categoriesFor: #start!public!start/stop! !
!SwazooSite categoriesFor: #stop!public!start/stop! !
!SwazooSite categoriesFor: #uriPattern!private! !
!SwazooSite categoriesFor: #watchdogAction!private! !

!SwazooSite class methodsFor!

named: aString
	"return a website with that name"
	^SwazooServer singleton siteNamed: aString!

newNamed: aString
	| site |
	site := self new name: aString.
	SwazooServer singleton addSite: site.
	site initialize.
	^site! !
!SwazooSite class categoriesFor: #named:!accessing!public! !
!SwazooSite class categoriesFor: #newNamed:!instance creation!public! !

