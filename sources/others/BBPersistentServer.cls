"Filed out from Dolphin Smalltalk 7"!

BBServer subclass: #BBPersistentServer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBPersistentServer guid: (GUID fromString: '{c7f4debd-ec2c-43e5-ad30-fb9f62cea393}')!
BBPersistentServer comment: ''!
!BBPersistentServer categoriesForClass!Unclassified! !
!BBPersistentServer methodsFor!

closeAllSession: aBoolean
	" Close all receiver's sessions, if <aBoolean> is true then commit all sessions otherwise abort all sessions "

	aBoolean 
	ifTrue: [sessions do: [:each | each commit]]
	ifFalse: [sessions do: [:each | each abort]].! !
!BBPersistentServer categoriesFor: #closeAllSession:!public!session management! !

