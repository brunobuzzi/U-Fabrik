"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SwazooServer
	instanceVariableNames: 'sites servers watchdog'
	classVariableNames: 'Singleton'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooServer guid: (GUID fromString: '{f4e27e4b-5c38-4390-b694-8755daccecf8}')!
SwazooServer comment: '
SwazooServer is where all begins in Swazoo!!!!
SwazooServer singleton : return one and only one server which holds the Sites. Also used to start and stop all sites ato once, to add new sited etc. When running, a collection of HTTPServers is also stored in SwazooServer singleton.

SwazooServer demoStart  will create and run a demo site on http://localhost:8888 which 
                              returns a web page with ''Hello World!!!!'''!
!SwazooServer categoriesForClass!Unclassified! !
!SwazooServer methodsFor!

addServer: aHTTPServer
	^self servers add: aHTTPServer!

addSite: aSite
	(self siteNamed: aSite name) notNil 
		ifTrue: [^SwazooSiteError error: 'Site with that name already exist!!'].
	(self siteHostnamed: aSite host) notNil 
		ifTrue: [^SwazooSiteError error: 'Site host name must be unique!!'].
	(self hasSiteHostnamed: aSite host ip: aSite ip port: aSite port) 
		ifTrue: [^SwazooSiteError error: 'Site with that host:ip:port combination already exist!!'].
	(self allowedHostIPPortFor: aSite) 
		ifFalse: [^SwazooSiteError error: 'Site with such host:ip:port combination not allowed!!'].
	self sites add: aSite!

allowedHostIPPortFor: aSite
	"is host:ip:port combination of aSite allowed regarding to existing sites?"
	"rules:
		1. host name must be unique, except if it is * (anyHost)  
		2. only one site per port can run on any host and all IP interfaces (ip = * or 0.0.0.0)
		3. if there is a site runing on all IPs, then no one can run on specific ip, per port
		4. 3 vice versa
		5. there is no site with the same host ip port combination
	"
	(self siteHostnamed: aSite host) notNil ifTrue: [^false]. 
	(aSite onAllInterfaces and: [self hasSiteOnPort: aSite port]) ifTrue: [^false].
	(aSite onAllInterfaces not and: [self hasSiteOnAllInterfacesOnPort: aSite port]) 
		ifTrue: [^false]. 
	(self hasSiteHostnamed: aSite host ip: aSite ip port: aSite port) ifTrue: [^false].
	^true!

allSites
	^self sites copy!

hasSiteHostnamed: aHostname ip: ipString port: aNumber
	^self sites contains: [:each | 
		each host = aHostname and: [each ip = ipString and: [each port = aNumber ] ] ]!

hasSiteOnAllInterfacesOnPort: aNumber
	"only one site per port is allowed when listening to all interfaces"
	^self sites contains: [:each | each onAllInterfaces and: [each port = aNumber] ]!

hasSiteOnPort: aNumber
	^self sites contains: [:each | each port = aNumber ]!

initialize
	self initSites.
	self initServers.!

initServers
	servers := Set new.!

initSites
	sites := OrderedCollection new.!

isServing
	"any site running currently?"
	^self servers notEmpty!

newServerFor: aSiteIdentifier
	^ aSiteIdentifier newServer.!

prepareDemoSite
	"on http://localhost:8888 to return 'Hello Word' "
	| site |
	site := SwazooSite newNamed: 'swazoodemo'. "which is now also added to SwazoServer"
	site host: '*' ip: '*' port: 8888.
	site addResource: (HelloWorldResource uriPattern: '/').
	^site!

prepareDemoSiteOnPort: aNumber
	"this site will run on all IP interfaces on that port, returning 'Hello World' "
	| name site |
	name := 'port', aNumber printString.
	site := SwazooSite newNamed: name. "which is now also added to SwazoServer"
	site host: '*' ip: '*' port: aNumber.
	site addResource: (HelloWorldResource uriPattern: '/').
	^site!

removeAllSites
	self sites copy do: [:each | self removeSite: each]!

removeServer: aHTTPServer
	 ^self servers remove: aHTTPServer!

removeSite: aSite 
	aSite stop.
	self sites remove: aSite!

restart
	self stop; start.!

restartServers
	"do that after image restart, because TCP sockets are probably not valid anymore"
	self servers do: [:each | each restart].!

serverFor: aSiteIdentifier
	| httpServer |
	aSiteIdentifier isEmpty ifTrue: [^nil]. "in case of new one  initializing"
	^self servers 
		detect: [:each | (each ip = aSiteIdentifier ip) & (each port = aSiteIdentifier port)]
		ifNone: [
			httpServer := self newServerFor: aSiteIdentifier.
			self addServer: httpServer.
			httpServer start.
			^httpServer]!

servers
	servers isNil ifTrue: [self initServers].
	^servers!

siteAnyHostAllInterfacesOnPort: aNumber
	"for host: * ip: * sites"
	^self sites 
		detect: [:each | each onAnyHost and: [each onAllInterfaces and: [each port = aNumber]]]
		ifNone: [nil]!

siteHostnamed: aString
	"find a site with that host name"
	| string |
	aString = '*' ifTrue: [^nil]. "what else should we return?"
	string := aString isNil ifTrue: [''] ifFalse: [aString asLowercase].
	^self sites detect: [:each | 
		each host notNil and: [each host asLowercase = string]] ifNone: [nil].!

siteNamed: aString
	"find a site with that short name"
	| string |
	string := aString isNil ifTrue: [''] ifFalse: [aString asLowercase].
	^self sites detect: [:each | each name asLowercase = string] ifNone: [nil].!

sites
	sites isNil ifTrue: [self initSites].
	^sites!

start
	self sites do: [:site | site start].
	self startWatchdog.!

startOn: aPortNumber
	"start a site on that port, on all ip interfaces and accepting all hosts.
	It also created a site if there is any site on that port yet"
	"opening http://localhost:portNumber will return a simple 'Hello world' "
	| site |
	site := self siteAnyHostAllInterfacesOnPort: aPortNumber.
	site isNil ifTrue: [site := self prepareDemoSiteOnPort: aPortNumber].
	site start.
	^site!

startSite: aString
	"start site with that name"
	| site |
	site := self siteNamed: aString.
	^site notNil 
		ifTrue: [site start. self isWatchdogRunning ifFalse: [self startWatchdog]. site] 
		ifFalse: [nil]!

startWatchdog
	"SwazooServer singleton startWatchdog"
	self isWatchdogRunning ifTrue: [self stopWatchdog].
	self watchdog: ([ [true] whileTrue:
		[(self respondsTo: #watchdogSites) ifTrue: [self watchdogSites].
		(self respondsTo: #watchdogOther) ifTrue: [self watchdogOther]. "if any"
		(Delay forSeconds: self watchdogPeriod) wait. ]
	] forkAt: Processor lowIOPriority)!

stop
	self sites do: [:site | site stop].
	self servers do: [:server | server stop].
	self initServers.
	self stopWatchdog.!

stopOn: aPortNumber
	"stop a site on that port, if any running on all ip interfaces and accepting all hosts"
	| site |
	site := self siteAnyHostAllInterfacesOnPort: aPortNumber.
	^site notNil ifTrue: [site stop. site] ifFalse: [nil].!

stopSite: aString
	"stop site with that name"
	| site |
	site := self siteNamed: aString.
	^site notNil ifTrue: [site stop. site] ifFalse: [nil].!

stopWatchdog
	self watchdog notNil ifTrue: 
		[self watchdog terminate.
		self watchdog: nil].!

watchdog
	^watchdog!

watchdog: aProcess
	watchdog := aProcess!

watchdogPeriod
	^10  "seconds"! !
!SwazooServer categoriesFor: #addServer:!private-servers!public! !
!SwazooServer categoriesFor: #addSite:!adding/removing!public! !
!SwazooServer categoriesFor: #allowedHostIPPortFor:!private! !
!SwazooServer categoriesFor: #allSites!accessing!public! !
!SwazooServer categoriesFor: #hasSiteHostnamed:ip:port:!private! !
!SwazooServer categoriesFor: #hasSiteOnAllInterfacesOnPort:!private! !
!SwazooServer categoriesFor: #hasSiteOnPort:!private! !
!SwazooServer categoriesFor: #initialize!initialize-release!public! !
!SwazooServer categoriesFor: #initServers!initialize-release!public! !
!SwazooServer categoriesFor: #initSites!initialize-release!public! !
!SwazooServer categoriesFor: #isServing!public!testing! !
!SwazooServer categoriesFor: #newServerFor:!private-servers!public! !
!SwazooServer categoriesFor: #prepareDemoSite!private! !
!SwazooServer categoriesFor: #prepareDemoSiteOnPort:!private! !
!SwazooServer categoriesFor: #removeAllSites!private! !
!SwazooServer categoriesFor: #removeServer:!private-servers!public! !
!SwazooServer categoriesFor: #removeSite:!adding/removing!public! !
!SwazooServer categoriesFor: #restart!public!start/stop! !
!SwazooServer categoriesFor: #restartServers!private-servers!public! !
!SwazooServer categoriesFor: #serverFor:!private-servers!public! !
!SwazooServer categoriesFor: #servers!private! !
!SwazooServer categoriesFor: #siteAnyHostAllInterfacesOnPort:!private! !
!SwazooServer categoriesFor: #siteHostnamed:!accessing!public! !
!SwazooServer categoriesFor: #siteNamed:!accessing!public! !
!SwazooServer categoriesFor: #sites!private! !
!SwazooServer categoriesFor: #start!public!start/stop! !
!SwazooServer categoriesFor: #startOn:!public!start/stop! !
!SwazooServer categoriesFor: #startSite:!public!start/stop! !
!SwazooServer categoriesFor: #startWatchdog!private-watchdog!public! !
!SwazooServer categoriesFor: #stop!public!start/stop! !
!SwazooServer categoriesFor: #stopOn:!public!start/stop! !
!SwazooServer categoriesFor: #stopSite:!public!start/stop! !
!SwazooServer categoriesFor: #stopWatchdog!private-watchdog!public! !
!SwazooServer categoriesFor: #watchdog!private-watchdog!public! !
!SwazooServer categoriesFor: #watchdog:!private-watchdog!public! !
!SwazooServer categoriesFor: #watchdogPeriod!private-watchdog!public! !

!SwazooServer class methodsFor!

configureFrom: aFilenameString 
	| sites stream |
	self singleton removeAllSites.
	stream := aFilenameString asFilename readStream.
	[sites := self readSitesFrom: stream] ensure: [stream close].
	sites do: [:each | 
		self singleton addSite: each.
		each start]!

demoStart
	"on http://localhost:8888/ will return simple 'Hello World'"
	| site |
	site := self singleton siteNamed: 'swazoodemo'.
	site isNil ifTrue: [site := self singleton prepareDemoSite].
	site start!

demoStop
	self stopSite: 'swazoodemo'!

exampleConfigurationFile
	"example sites.cnf, which will serve static files from current directory and respond with
	'Hello Worlrd' from url http://localhost:8888/foo/Howdy"

"<Site>
 	<SiteIdentifier ip: '127.0.0.1' port: 8888 host: 'localhost' >
 	<CompositeResource uriPattern: '/'>
  		<CompositeResource uriPattern: 'foo'>
   			<HelloWorldResource uriPattern: 'Howdy'>
  		</CompositeResource>
 	</CompositeResource>
 	<FileResource uriPattern: '/' filePath: '.'>
</Site>
"!

initialize
	"self initialize"
	SpEnvironment addImageStartupTask: [self singleton restartServers] for: self singleton.!

initSingleton
	Singleton := super new!

new
	^self shouldNotImplement!

readSitesFrom: aStream 
	| sites instance |
	sites := OrderedCollection new.
	[instance := SwazooSite new readFrom: aStream.
	instance notNil] whileTrue: [sites add: instance].
	^sites!

restart
	self stop; start!

singleton
	Singleton isNil ifTrue: [self initSingleton].
	^Singleton!

siteHostnamed: aString
	^self singleton siteHostnamed: aString!

siteNamed: aString
	^self singleton siteNamed: aString!

start
	"start all sites"
	self singleton start!

startOn: aPortNumber
	"start a site on that port, on all ip interfaces and accepting all hosts.
	It also created a site if there is any site on that port yet"
	^self singleton startOn: aPortNumber!

startSite: aString
	"start site with that name"
	self singleton startSite: aString!

stop
	"stop all sites"
	self singleton stop!

stopOn: aPortNumber
	"stop a site on that port, if any runingon all ip interfaces and accepting all hosts."
	^self singleton stopOn: aPortNumber!

stopSite: aString
	"stop site with that name"
	self singleton stopSite: aString!

swazooVersion
	^'Swazoo 2.2 Smalltalk Web Server'! !
!SwazooServer class categoriesFor: #configureFrom:!config-from-file!public! !
!SwazooServer class categoriesFor: #demoStart!public!start/stop! !
!SwazooServer class categoriesFor: #demoStop!public!start/stop! !
!SwazooServer class categoriesFor: #exampleConfigurationFile!config-from-file!public! !
!SwazooServer class categoriesFor: #initialize!initialize!public! !
!SwazooServer class categoriesFor: #initSingleton!private! !
!SwazooServer class categoriesFor: #new!private! !
!SwazooServer class categoriesFor: #readSitesFrom:!private! !
!SwazooServer class categoriesFor: #restart!public!start/stop! !
!SwazooServer class categoriesFor: #singleton!accessing!public! !
!SwazooServer class categoriesFor: #siteHostnamed:!accessing!public! !
!SwazooServer class categoriesFor: #siteNamed:!accessing!public! !
!SwazooServer class categoriesFor: #start!public!start/stop! !
!SwazooServer class categoriesFor: #startOn:!public!start/stop! !
!SwazooServer class categoriesFor: #startSite:!public!start/stop! !
!SwazooServer class categoriesFor: #stop!public!start/stop! !
!SwazooServer class categoriesFor: #stopOn:!public!start/stop! !
!SwazooServer class categoriesFor: #stopSite:!public!start/stop! !
!SwazooServer class categoriesFor: #swazooVersion!accessing!public! !

