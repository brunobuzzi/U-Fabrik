"Filed out from Dolphin Smalltalk 7"!

BBSession subclass: #BBImageSession
	instanceVariableNames: 'repository'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBImageSession guid: (GUID fromString: '{8280e4db-0777-465a-9cf8-462f2aefe56d}')!
BBImageSession comment: ''!
!BBImageSession categoriesForClass!Unclassified! !
!BBImageSession methodsFor!

add: anObject ifPresent: aBlock
	" Add <anObject> to receiver's Server "

	(repository includes: anObject) ifFalse: [^repository add: anObject].
	^aBlock value!

beginTransaction
	^self!

defaultRepositoryClass
	^BBObjectRepository!

initialize

	super initialize.

	repository := self defaultRepositoryClass new.!

instancesOf: aClass 
	" Answer all instances of <aClass> "

	^repository instancesOf: aClass!

instancesOf: aClass betweenDate: aDate and: aDate2 selector: aSymbol

	^(self instancesOf: aClass) select: [:each | (aDate <= (each perform: aSymbol)) and:[(each perform: aSymbol) <= aDate2]]!

instancesOf: aClass matchingStringKey: aString selector: aSymbol
	| instances |

	instances := self instancesOf: aClass.
	^instances select: [:each | aString match: (each perform: aSymbol)]

	!

instancesOf: aClass selector: aSymbol 

	^self instancesOf: aClass.
!

login

	super login.

	repository := server repository.!

modify: aPaciente withKey: aByteArray 

	^true!

objectIdMatch: aPaciente 
	^true!

remove: anObject ifAbsent: aBlock
	" Remove <anObject> from receiver's Server "

	(repository includes: anObject) 
	ifTrue: [anObject removeRelations.
		^repository remove: anObject].
	^aBlock value!

replace: oldObject with: newObject
	" Relpace <oldObject> in the main root  of receiver's Server with <newObject> "

	^repository replace: oldObject with: newObject
!

repository
	^repository!

repository: anObject
	repository := anObject! !
!BBImageSession categoriesFor: #add:ifPresent:!public! !
!BBImageSession categoriesFor: #beginTransaction!public! !
!BBImageSession categoriesFor: #defaultRepositoryClass!public! !
!BBImageSession categoriesFor: #initialize!public! !
!BBImageSession categoriesFor: #instancesOf:!public! !
!BBImageSession categoriesFor: #instancesOf:betweenDate:and:selector:!public! !
!BBImageSession categoriesFor: #instancesOf:matchingStringKey:selector:!public! !
!BBImageSession categoriesFor: #instancesOf:selector:!public! !
!BBImageSession categoriesFor: #login!accessing!public! !
!BBImageSession categoriesFor: #modify:withKey:!public! !
!BBImageSession categoriesFor: #objectIdMatch:!public! !
!BBImageSession categoriesFor: #remove:ifAbsent:!public! !
!BBImageSession categoriesFor: #replace:with:!public! !
!BBImageSession categoriesFor: #repository!accessing!private! !
!BBImageSession categoriesFor: #repository:!accessing!private! !

!BBImageSession class methodsFor!

newOn: aWxServer

	^super new initialize;
		server: aWxServer;
		yourself.! !
!BBImageSession class categoriesFor: #newOn:!public! !

