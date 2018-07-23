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

	^(errorLogs at: aUMLVMLog stamp ifAbsentPut: [OrderedCollection new]) add: aUMLVMLog!

addLog: aUMLVMLog

	^(logs at: aUMLVMLog stamp ifAbsentPut: [OrderedCollection new]) add: aUMLVMLog!

cleanAll

	self cleanLog.
	self cleanErrorLog.!

cleanErrorLog

	errorLogs := LookupTable new.!

cleanLog

	logs := LookupTable new.!

errorLogIsActive
	^errorLogIsActive!

errorLogIsActive: anObject
	errorLogIsActive := anObject!

errorLogs
	^errorLogs!

errorLogs: anObject
	errorLogs := anObject!

errorLogsAsSortedCollection
	| newCollection |

	newCollection := SortedCollection sortBlock: [:a :b | a stamp <= b stamp].
	
	errorLogs do: [:eachCollection | newCollection addAll: eachCollection].

	^newCollection!

errorLogSize

	^errorLogs inject: 0 into: [:sum :each | sum + each size]


!

initialize

	super initialize.

	logs := LookupTable new.
	logIsActive := false.
	errorLogs := LookupTable new.
	errorLogIsActive := false.!

logIsActive
	^logIsActive!

logIsActive: anObject
	logIsActive := anObject!

logs
	^logs!

logs: anObject
	logs := anObject!

logsAsSortedCollection
	| newCollection |

	newCollection := SortedCollection sortBlock: [:a :b | a stamp <= b stamp].
	
	logs do: [:eachCollection | newCollection addAll: eachCollection].

	^newCollection!

logSize

	^logs inject: 0 into: [:sum :each | sum + each size]


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
!UMLVMTransLog categoriesFor: #errorLogsAsSortedCollection!public! !
!UMLVMTransLog categoriesFor: #errorLogSize!public! !
!UMLVMTransLog categoriesFor: #initialize!public! !
!UMLVMTransLog categoriesFor: #logIsActive!accessing!private! !
!UMLVMTransLog categoriesFor: #logIsActive:!accessing!private! !
!UMLVMTransLog categoriesFor: #logs!accessing!private! !
!UMLVMTransLog categoriesFor: #logs:!accessing!private! !
!UMLVMTransLog categoriesFor: #logsAsSortedCollection!public! !
!UMLVMTransLog categoriesFor: #logSize!public! !
!UMLVMTransLog categoriesFor: #totalSize!public! !

