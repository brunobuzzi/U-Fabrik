"Filed out from Dolphin Smalltalk 7"!

UMLObject subclass: #UMLVMTransLog
	instanceVariableNames: 'logs errorLogs logIsActive errorLogIsActive'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLVMTransLog guid: (GUID fromString: '{5083ab32-8c53-4269-b961-09c07d9d2116}')!
UMLVMTransLog comment: ''!
!UMLVMTransLog categoriesForClass!Unclassified! !
!UMLVMTransLog methodsFor!

addErrorLog: aUMLVMLog

	^errorLogs add: aUMLVMLog!

addLog: aUMLVMLog

	^logs add: aUMLVMLog!

cleanAll

	self cleanLog.
	self cleanErrorLog.!

cleanErrorLog

	errorLogs := OrderedCollection new.!

cleanLog

	logs := OrderedCollection new.!

errorLogIsActive
	^errorLogIsActive!

errorLogIsActive: anObject
	errorLogIsActive := anObject!

errorLogs
	^errorLogs!

errorLogs: anObject
	errorLogs := anObject!

errorLogSize

	^errorLogs size
!

initialize

	super initialize.

	logs := OrderedCollection new.
	logIsActive := false.
	errorLogs := OrderedCollection new.
	errorLogIsActive := false.!

logIsActive
	^logIsActive!

logIsActive: anObject
	logIsActive := anObject!

logs
	^logs!

logs: anObject
	logs := anObject!

logSize

	^logs size


!

totalSize

	^self logSize + self errorLogSize

! !
!UMLVMTransLog categoriesFor: #addErrorLog:!public! !
!UMLVMTransLog categoriesFor: #addLog:!public! !
!UMLVMTransLog categoriesFor: #cleanAll!public! !
!UMLVMTransLog categoriesFor: #cleanErrorLog!public! !
!UMLVMTransLog categoriesFor: #cleanLog!public! !
!UMLVMTransLog categoriesFor: #errorLogIsActive!accessing!private! !
!UMLVMTransLog categoriesFor: #errorLogIsActive:!accessing!private! !
!UMLVMTransLog categoriesFor: #errorLogs!accessing!private! !
!UMLVMTransLog categoriesFor: #errorLogs:!accessing!private! !
!UMLVMTransLog categoriesFor: #errorLogSize!public! !
!UMLVMTransLog categoriesFor: #initialize!public! !
!UMLVMTransLog categoriesFor: #logIsActive!accessing!private! !
!UMLVMTransLog categoriesFor: #logIsActive:!accessing!private! !
!UMLVMTransLog categoriesFor: #logs!accessing!private! !
!UMLVMTransLog categoriesFor: #logs:!accessing!private! !
!UMLVMTransLog categoriesFor: #logSize!public! !
!UMLVMTransLog categoriesFor: #totalSize!public! !

