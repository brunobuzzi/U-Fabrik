"Filed out from Dolphin Smalltalk 7"!

Shell subclass: #UMLShell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLShell guid: (GUID fromString: '{5b8089b8-984d-4b58-96bc-663d563f764e}')!
UMLShell comment: ''!
!UMLShell categoriesForClass!Unclassified! !
!UMLShell methodsFor!

closeCurrentUMLCard

	^self exit!

getAllClasses
	^self defaultVirtualMachine getAllClasses!

startWebLogin

	^ShellLibrary default shellOpen: 'http://localhost:',(AIDASite named: 'U-Fabrik Web Server') port printString,'/admin.html?view=login'! !
!UMLShell categoriesFor: #closeCurrentUMLCard!public! !
!UMLShell categoriesFor: #getAllClasses!public! !
!UMLShell categoriesFor: #startWebLogin!public! !

