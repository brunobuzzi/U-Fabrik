"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SwazooResource
	instanceVariableNames: 'enabled uriPattern parent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooResource guid: (GUID fromString: '{a7c04396-e1ba-44fe-9b77-f80d65ab379a}')!
SwazooResource comment: 'Resource is an abstract class for all so called web resources. Such resource has its url address and can serve with responding to web requests. Every resource need to #answerTo: aHTTPRequest with aHTTPResponse. Site is a subclass of a Resource. You can subclass it with your own implementation. There is also a CompositeResource, which can hold many subresources. Site is also aCopmpositeResource and therefore you can add your own resources to your site.'!
!SwazooResource categoriesForClass!Unclassified! !
!SwazooResource methodsFor!

answerTo: aRequest
	"override in your Resource and return a HTTPResponse"
	^nil!

authenticationRealm
	"rfc2617 3.2.1: A string to be displayed to users so they know which username and
     password to use. This string should contain at least the name of
     the host performing the authentication and might additionally
     indicate the collection of users who might have access. An example
     might be 'registered_users@gotham.news.com' "
	^'Swazoo server'!

authenticationScheme
	"#Basic or #Digest, see rfc2617. Digest is recomended because password
	goes encrypted to server"
	^#Digest!

canAnswer
	^self isEnabled and: [self isValidlyConfigured]!

currentUrl
	| stream |
	stream := WriteStream on: String new.
	self printUrlOn: stream.
	^stream contents!

disable
	enabled := false!

enable
	enabled := true!

helpResolve: aResolution 
	^aResolution resolveLeafResource: self!

initialize
	self enable.
	self initUriPattern!

initUriPattern
	self uriPattern: ''!

isEnabled
	^enabled!

isValidlyConfigured
	^self uriPattern ~= ''!

match: anIdentifier 
	^self uriPattern match: anIdentifier!

onResourceCreated
	"Received after the resource has been added to its parent resource. Opportunity to perform initialization that depends on knowledge of the resource tree structure"!

parent
	^parent!

parent: aResource
	parent := aResource!

printUrlOn: aWriteStream 
	self parent printUrlOn: aWriteStream.
	aWriteStream nextPutAll: self uriPattern!

root
	^self parent isNil
		ifTrue: [self]
		ifFalse: [self parent root]!

start!

stop!

unauthorizedResponse
	"Resource should call this method and return its result immediately, if request is not authorized 
	to access that resource and a HTTP authorization is needed"
"	^HTTPAuthenticationChallenge newForResource: self " !

unauthorizedResponsePage
	"Resource should override this method with it's own html message"
	^'<HTML>
  <HEAD>
    <TITLE>Authentication error</TITLE>
  </HEAD>
  <BODY>
    <H1>401 Authentication error</H1>
    <P>Bad username or password</P>
  </BODY>
</HTML>'!

uriPattern
	^uriPattern!

uriPattern: anIdentifier 
	anIdentifier notNil ifTrue: [uriPattern := anIdentifier]! !
!SwazooResource categoriesFor: #answerTo:!public!serving! !
!SwazooResource categoriesFor: #authenticationRealm!authentication!public! !
!SwazooResource categoriesFor: #authenticationScheme!authentication!public! !
!SwazooResource categoriesFor: #canAnswer!public!testing! !
!SwazooResource categoriesFor: #currentUrl!accessing!public! !
!SwazooResource categoriesFor: #disable!public!start/stop! !
!SwazooResource categoriesFor: #enable!public!start/stop! !
!SwazooResource categoriesFor: #helpResolve:!accessing!public! !
!SwazooResource categoriesFor: #initialize!private-initialize!public! !
!SwazooResource categoriesFor: #initUriPattern!private-initialize!public! !
!SwazooResource categoriesFor: #isEnabled!public!testing! !
!SwazooResource categoriesFor: #isValidlyConfigured!public!testing! !
!SwazooResource categoriesFor: #match:!private! !
!SwazooResource categoriesFor: #onResourceCreated!private-initialize!public! !
!SwazooResource categoriesFor: #parent!accessing!public! !
!SwazooResource categoriesFor: #parent:!private! !
!SwazooResource categoriesFor: #printUrlOn:!accessing!public! !
!SwazooResource categoriesFor: #root!accessing!public! !
!SwazooResource categoriesFor: #start!public!start/stop! !
!SwazooResource categoriesFor: #stop!public!start/stop! !
!SwazooResource categoriesFor: #unauthorizedResponse!authentication!public! !
!SwazooResource categoriesFor: #unauthorizedResponsePage!authentication!public! !
!SwazooResource categoriesFor: #uriPattern!accessing!public! !
!SwazooResource categoriesFor: #uriPattern:!accessing!public! !

!SwazooResource class methodsFor!

new
	^super new initialize!

uriPattern: aString 
	^self new uriPattern: aString! !
!SwazooResource class categoriesFor: #new!instance creation!public! !
!SwazooResource class categoriesFor: #uriPattern:!instance creation!public! !

