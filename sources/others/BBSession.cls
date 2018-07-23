"Filed out from Dolphin Smalltalk 7"!

Object subclass: #BBSession
	instanceVariableNames: 'server id'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBSession guid: (GUID fromString: '{af0b2492-149d-478a-938b-f6fdce98158e}')!
BBSession comment: ''!
!BBSession categoriesForClass!Unclassified! !
!BBSession methodsFor!

abort!

add: anObject 
	" Add <anObject> to receiver's Server "

	^self add: anObject ifPresent: []!

add: anObject ifPresent: aBlock
	" Add <anObject> to receiver's Server "

	^self subclassResponsibility!

checkpoint!

closeSession

	server closeSession: self.
	server := nil
!

commit!

id
	^id!

id: anObject
	id := anObject!

initialize

	super initialize.

	id := 0.
!

instancesOf: aClass 
	" Answer all instances of <aClass> "

	^self subclassResponsibility!

instancesOf: aClass collecting: aBlock
	" Answer all instances of <aClass> "

	^(self instancesOf: aClass) collect: aBlock!

instancesOf: aClass rejecting: aBlock
	" Answer all instances of <aClass> "

	^(self instancesOf: aClass) reject: aBlock!

instancesOf: aClass satisfying: aBlock
	" Answer all instances of <aClass> "

	^(self instancesOf: aClass) select: aBlock!

isClosed
	^server isNil!

isOpen

	^self isClosed not!

login
	server addSession: self!

logout
	" Removes the receiver from the server "

	self closeSession!

logoutAborting

	self closeSession.

	self abort.!

markDirty: anObject
!

move: anObject removingKey: oldObjectID

	^self subclassResponsibility!

remove: anObject 
	" Remove <anObject> from receiver's Server "

	^self remove: anObject ifAbsent: []!

remove: anObject ifAbsent: aBlock
	" Remove <anObject> from receiver's Server "

	^self subclassResponsibility!

replace: oldObject with: newObject
	" Relpace <oldObject> in the main root  of receiver's Server with <newObject> "

	^self subclassResponsibility
!

server
	^server!

server: anObject 

	server := anObject.
	self login! !
!BBSession categoriesFor: #abort!public!transaction management! !
!BBSession categoriesFor: #add:!public! !
!BBSession categoriesFor: #add:ifPresent:!public! !
!BBSession categoriesFor: #checkpoint!public! !
!BBSession categoriesFor: #closeSession!public!transaction management! !
!BBSession categoriesFor: #commit!public!transaction management! !
!BBSession categoriesFor: #id!accessing!private! !
!BBSession categoriesFor: #id:!accessing!private! !
!BBSession categoriesFor: #initialize!public! !
!BBSession categoriesFor: #instancesOf:!public! !
!BBSession categoriesFor: #instancesOf:collecting:!public! !
!BBSession categoriesFor: #instancesOf:rejecting:!public! !
!BBSession categoriesFor: #instancesOf:satisfying:!public! !
!BBSession categoriesFor: #isClosed!public! !
!BBSession categoriesFor: #isOpen!public! !
!BBSession categoriesFor: #login!accessing!public! !
!BBSession categoriesFor: #logout!public!transaction management! !
!BBSession categoriesFor: #logoutAborting!public!transaction management! !
!BBSession categoriesFor: #markDirty:!public! !
!BBSession categoriesFor: #move:removingKey:!public! !
!BBSession categoriesFor: #remove:!public! !
!BBSession categoriesFor: #remove:ifAbsent:!public! !
!BBSession categoriesFor: #replace:with:!public! !
!BBSession categoriesFor: #server!accessing!private! !
!BBSession categoriesFor: #server:!accessing!public! !

!BBSession class methodsFor!

newOn: aBBSessionManager

	^super new initialize;
		server: aBBSessionManager;
		yourself.! !
!BBSession class categoriesFor: #newOn:!public! !

