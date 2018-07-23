"Filed out from Dolphin Smalltalk 7"!

Role subclass: #MemberRole
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MemberRole guid: (GUID fromString: '{28ea47e1-6a2b-4665-a08f-e77b8fbc5164}')!
MemberRole comment: ''!
!MemberRole categoriesForClass!Unclassified! !
!MemberRole methodsFor!

isEmployeeRole
	^true!

isMemberRole
	^true!

printString
	^'aMemberRole ', self name! !
!MemberRole categoriesFor: #isEmployeeRole!public!testing! !
!MemberRole categoriesFor: #isMemberRole!public!testing! !
!MemberRole categoriesFor: #printString!private! !

