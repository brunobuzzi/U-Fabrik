"Filed out from Dolphin Smalltalk 7"!

Object subclass: #BBServer
	instanceVariableNames: 'name sessions repository'
	classVariableNames: 'Servers'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBServer guid: (GUID fromString: '{0d9e0d93-ad6e-45e6-a790-d62526e00373}')!
BBServer comment: ''!
!BBServer categoriesForClass!Unclassified! !
!BBServer methodsFor!

addSession: aBBSession 

	self setSessionNumberFor: aBBSession .
	^sessions at: aBBSession id put: aBBSession.!

closeAll

	^self initialize!

closeAllSession

#deprecated.
	^self closeAllSessions!

closeAllSessions

	sessions do: [:each | each logout].!

closeRepository
	" Close the associated repository of the receiver "!

closeSession: aBBSession 

	^sessions removeKey: aBBSession id!

defalutRepositoryClass
	^self subclassResponsibility!

defaultRootServerClass
	^self subclassResponsibility!

defaultSessionClass

	^self class defaultSessionClass!

downloadFileFrom: anURLFile to: pathFile
	" Download <anURLFile> from the web and cpy to <pathFile> "
	| urlFile newFile | 

	urlFile := (IStream onURL: anURLFile) contents readStream. 
	newFile := FileStream write: pathFile mode: #create check: false text: false.
	[ newFile nextPutAll: urlFile upToEnd. ] ensure:[ newFile close ]. 
!

includesSession: aBBSession

	^sessions includesKey: aBBSession id!

initialize
	super initialize.
	name := ''.
	sessions := LookupTable new.
	repository := self defalutRepositoryClass new!

name
	^name!

name: anObject
	name := anObject!

newSession

	^self defaultSessionClass newOn: self!

numberOfObjects

	^self subclassResponsibility!

numberOfSessions

	^sessions size!

openDefaultRepository

	self subclassResponsibility!

openRepositoryOn: aPath
	" Open the default repository on <aPath> "!

reorganize
!

repository
	^repository!

repository: anObject
	repository := anObject!

sessions
	^sessions!

sessions: anObject
	sessions := anObject!

setSessionNumberFor: aBBSession 
	| newSessionNumber sessionsNumbers |

	sessionsNumbers := (sessions collect: [:each | each id]) asSortedCollection.
	sessionsNumbers isEmpty ifTrue: [^aBBSession id: 1].
	newSessionNumber := sessionsNumbers last + 1.
	^aBBSession id: newSessionNumber! !
!BBServer categoriesFor: #addSession:!public! !
!BBServer categoriesFor: #closeAll!public! !
!BBServer categoriesFor: #closeAllSession!public! !
!BBServer categoriesFor: #closeAllSessions!public! !
!BBServer categoriesFor: #closeRepository!public! !
!BBServer categoriesFor: #closeSession:!public! !
!BBServer categoriesFor: #defalutRepositoryClass!public! !
!BBServer categoriesFor: #defaultRootServerClass!public! !
!BBServer categoriesFor: #defaultSessionClass!public! !
!BBServer categoriesFor: #downloadFileFrom:to:!internet!public! !
!BBServer categoriesFor: #includesSession:!public! !
!BBServer categoriesFor: #initialize!public! !
!BBServer categoriesFor: #name!accessing!private! !
!BBServer categoriesFor: #name:!accessing!private! !
!BBServer categoriesFor: #newSession!public! !
!BBServer categoriesFor: #numberOfObjects!public! !
!BBServer categoriesFor: #numberOfSessions!public! !
!BBServer categoriesFor: #openDefaultRepository!public! !
!BBServer categoriesFor: #openRepositoryOn:!public! !
!BBServer categoriesFor: #reorganize!public! !
!BBServer categoriesFor: #repository!accessing!private! !
!BBServer categoriesFor: #repository:!accessing!private! !
!BBServer categoriesFor: #sessions!accessing!private! !
!BBServer categoriesFor: #sessions:!accessing!private! !
!BBServer categoriesFor: #setSessionNumberFor:!public! !

!BBServer class methodsFor!

defaultSessionClass

	^self subclassResponsibility!

errorNoSuchServerNamed: aString 

	^self error: 'There''s not exist a server named: <' , aString , '>'!

initialize

	super initialize.

	Servers := LookupTable new.!

new

	^super new initialize!

newNamed: aString
	| server |

	server  := self new name: aString; yourself.
	Servers at: aString put: server.
	^server!

removeServerNamed: aString 
	^Servers removeKey: aString ifAbsent: [self errorNoSuchServerNamed: aString]!

serverNamed: aString

	^Servers at: aString ifAbsent: [self errorNoSuchServerNamed: aString]!

servers

	^Servers! !
!BBServer class categoriesFor: #defaultSessionClass!public! !
!BBServer class categoriesFor: #errorNoSuchServerNamed:!public! !
!BBServer class categoriesFor: #initialize!public! !
!BBServer class categoriesFor: #new!public! !
!BBServer class categoriesFor: #newNamed:!public! !
!BBServer class categoriesFor: #removeServerNamed:!public! !
!BBServer class categoriesFor: #serverNamed:!public! !
!BBServer class categoriesFor: #servers!public! !

