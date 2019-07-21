"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebSessionManager
	instanceVariableNames: 'site sessions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebSessionManager guid: (GUID fromString: '{d917bf0a-6c46-4af0-872e-39802020627b}')!
WebSessionManager comment: ''!
!WebSessionManager categoriesForClass!Unclassified! !
!WebSessionManager methodsFor!

addSession: aWebSession
	self site critical:
		[self sessions 
			at: aWebSession id put: aWebSession;
			at: aWebSession secureId put: aWebSession]!

allActiveSessions
	^self allSessions select: [:each | each isActive].!

allGuestSessions
	^self allSessions select: [:each | each user isNil or: [each user isGuest] ].!

allNonactiveGuestSessions
	"guest sessions nonactive more that one hour"
	^self allGuestSessions select: [:each | each isActive not].!

allSessions
	^self sessions values asSet  "to remove duplicates because the session id can be double, 
							     one for ssl too!!"!

bindSSLSessionFor: aRequest
	"Try to find a session among currently live sessions. It helps with a session id in a query 
	part of url. If not found, or id not in query string, then make a new session"
	| session id |
	id := aRequest queryAt: 'sessionId' ifAbsent: [self error: 'no session id!!'].
	session := (self existSessionWithID: id asInteger)
		ifTrue: [self findSessionWithID: id asInteger]
		ifFalse: [self error: 'no session with that id'].
	session requests size = 1
		ifTrue: [self countNewVisitor]
		ifFalse: 	[self checkAndCountReturningVisitor: session].
	session lastRequest: aRequest.
	(aRequest includesQuery:  'setLanguage') ifTrue:
		[session language: (aRequest queryAt: 'setLanguage') asSymbol].
	^session.!

checkAndCountReturningVisitor: aSession
	"returning visitor is those who is not active more than 1h"
	(aSession isActive not and: [aSession requests size > 1]) ifTrue:
		[self site critical: [self site returningVisitorsCounter incCounter] ]!

countNewVisitor
	self site critical:
		[self site newVisitorsCounter incCounter]!

existSessionWithID: anIDNumber
	^self sessions includesKey: anIDNumber.!

findAllSessionsWithUsername: aString
	^self sessions values select: [:each | each user username = aString]!

findOrCreateSessionFor: aRequest
	"Try to find a session among currently live sessions. It helps with a session id in a query 
	part of url. If not found, or id not in query string, then make a new session"
	| session id cookie |

	(self hasSSLBinding: aRequest) ifTrue: [^self bindSSLSessionFor: aRequest]. 
	(aRequest hasCookie and: [aRequest idFromCookie notNil])
		ifTrue: [id := aRequest idFromCookie. cookie := true. self site log: ' cookie ' ]
		ifFalse: 
			[cookie := false. id := aRequest queryAt: 'id' ifAbsent: [(self newSessionCookie: cookie) id] ].
	session := (self existSessionWithID: id asInteger)
		ifTrue: [self findSessionWithID: id asInteger] 
		ifFalse: [self newSessionCookie: cookie id: id asInteger].
	session requests size = 1 
		ifTrue: [self countNewVisitor] ifFalse: 	[self checkAndCountReturningVisitor: session].
	session checkExpirationAndPossiblyLogoutFor: aRequest.
	session lastRequest: aRequest.
	session cookie: cookie. 

	(cookie not and: [self site urlsWithSessionId]) ifTrue: [session addSessionID].

	(aRequest includesQuery:  'setLanguage') ifTrue:
		[session language: (aRequest queryAt: 'setLanguage') asSymbol].

	^session.!

findSessionWithID: anIDNumber
	^self sessions at: anIDNumber ifAbsent: [nil].!

findSessionWithUsername: aString
	^self sessions detect: [:each | each user username = aString] ifNone: [nil].!

hasSSLBinding: aRequest
	"if sessionId=456546464 exist in query part of request. This means that this is 
	a SSL session with its own cookie and must be bind to a normal session with sessionId"

	^aRequest isEncrypted and: [aRequest includesQuery: 'sessionId']!

initialize
	self initSessions.

"WebSessionManager default initialize"!

initSessions
	sessions := Dictionary new.!

newSessionCookie: aBoolean
	"open and return a fresh new session"
	^self newSessionCookie: aBoolean id: nil!

newSessionCookie: aBoolean id: aSessionID
	"open and return a fresh new session"
	| session |
	session := WebSession newOn: self.
	aSessionID notNil ifTrue: [session id: aSessionID].
	self site log: ' new session '.
	self addSession: session.
	session cookie: aBoolean.
	^session!

printString
	^'WebSessionManager on: ', self site name!

releaseApplicationState
	"release all application state of sessions"
	^self allSessions do: [:each | each releaseApplicationState].!

removeGuestSessions
	^self allGuestSessions do: [:each | 
		each parent == self 
			ifTrue: [each removeYourself] 
			ifFalse: [self removeSession: each] ]. "in which case?"!

removeNonactiveGuestSessions
	"all guest sessions inactive more than one hour"
	^self allNonactiveGuestSessions do: [:each | 
		each parent == self 
			ifTrue: [each removeYourself] 
			ifFalse: [self removeSession: each] ]. "in which case?"!

removeSession: aWebSession
	"remove from sessions"
	self site critical:
		[self sessions 
			removeKey: aWebSession id ifAbsent: [];
			removeKey: aWebSession secureId ifAbsent: [] ].!

sessions
	"dictionary of sessions by session id as the key. Not that session can have two ids, for ssl too!!"
	sessions isNil ifTrue: [self initSessions].
	^sessions!

site
	^site!

site: anAIDASite
	site := anAIDASite.! !
!WebSessionManager categoriesFor: #addSession:!adding-removing!public! !
!WebSessionManager categoriesFor: #allActiveSessions!accessing!public! !
!WebSessionManager categoriesFor: #allGuestSessions!accessing!public! !
!WebSessionManager categoriesFor: #allNonactiveGuestSessions!accessing!public! !
!WebSessionManager categoriesFor: #allSessions!accessing!public! !
!WebSessionManager categoriesFor: #bindSSLSessionFor:!private! !
!WebSessionManager categoriesFor: #checkAndCountReturningVisitor:!private! !
!WebSessionManager categoriesFor: #countNewVisitor!private! !
!WebSessionManager categoriesFor: #existSessionWithID:!public!testing! !
!WebSessionManager categoriesFor: #findAllSessionsWithUsername:!accessing!public! !
!WebSessionManager categoriesFor: #findOrCreateSessionFor:!adding-removing!public! !
!WebSessionManager categoriesFor: #findSessionWithID:!accessing!public! !
!WebSessionManager categoriesFor: #findSessionWithUsername:!accessing!public! !
!WebSessionManager categoriesFor: #hasSSLBinding:!private! !
!WebSessionManager categoriesFor: #initialize!initialize-release!public! !
!WebSessionManager categoriesFor: #initSessions!initialize-release!public! !
!WebSessionManager categoriesFor: #newSessionCookie:!private! !
!WebSessionManager categoriesFor: #newSessionCookie:id:!private! !
!WebSessionManager categoriesFor: #printString!private! !
!WebSessionManager categoriesFor: #releaseApplicationState!adding-removing!public! !
!WebSessionManager categoriesFor: #removeGuestSessions!adding-removing!public! !
!WebSessionManager categoriesFor: #removeNonactiveGuestSessions!adding-removing!public! !
!WebSessionManager categoriesFor: #removeSession:!adding-removing!public! !
!WebSessionManager categoriesFor: #sessions!private! !
!WebSessionManager categoriesFor: #site!accessing!public! !
!WebSessionManager categoriesFor: #site:!private! !

!WebSessionManager class methodsFor!

default
	^AIDASite default sessionManager!

newOn: aSite
	^super new 
		initialize; 
		site: aSite! !
!WebSessionManager class categoriesFor: #default!accessing!public! !
!WebSessionManager class categoriesFor: #newOn:!instance creation!public! !

