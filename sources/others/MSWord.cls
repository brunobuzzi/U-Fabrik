"Filed out from Dolphin Smalltalk 7"!

MSOffice subclass: #MSWord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MSWord guid: (GUID fromString: '{74a5f6ea-9631-46a3-a88b-026b6f413dad}')!
MSWord comment: 'Esta clase representa un archivo Microsoft Word.'!
!MSWord categoriesForClass!Unclassified! !
!MSWord methodsFor!

activeDocument

	" Private -  Answer aString that is the property name of an Active Document "

	^'ActiveDocument'
!

applicationName

	" Answer aString that represent the application name for the OS "

	^'Word.Application'.
!

changeDirectoryTo: aPath

	" Change the directory of the receiver to aPath "

	document invoke: 'ChangeFileOpenDirectory' with: aPath!

deleteTableNumber: index

	^(self ifExistTableNumber: index do: [(self tableNumber: index) invoke: 'Delete'])!

deleteTextOfTableNumber: anInteger 

	^self setTextOfTableNumber: anInteger  with: ''!

extension

	^'doc'!

findText: aString
	| selection find |

	self getSelection invoke: 'HomeKey' with: 6.
	selection := document getProperty: 'Selection'.
	find := selection getProperty: 'Find'.
	find invoke: 'ClearFormatting'.
	find setProperty: 'Text' value: aString.
	find invoke: 'Execute'.
	^selection!

findTextWithReset: aString

	self getSelection invoke: 'HomeKey' with: 6.
	^self findText: aString!

getAllText

	self getSelection invoke: 'HomeKey' with: 6.
	self getSelection invoke: 'WholeStory'.
	self getSelection invoke: 'Copy'.
	^Clipboard current getText
	

	!

getRequirementNameAndCode
" 12 - wdCell.
 5 - wdLine.
 9 - wdColumn.
 1 - wdExtend "
	| selection values |

	values := OrderedCollection new.
	selection := self findText: 'Prioridad'.
	selection invoke: 'MoveUp' with: '5'.
	selection invoke: 'MoveRight' with: '12'.
	values add: selection value.
	selection invoke: 'MoveLeft' with: '12'.
	values addFirst: selection value.
	^values!

getSelection

	^document getProperty: 'Selection'!

getTextOfTableNumber: anInteger 

	^(self rangeOfTableNumber: anInteger) getProperty: 'Text'!

goToTableNumber: anInteger

	^self getSelection invoke: 'GoTo' withArguments: (OrderedCollection with: 2 with: 1 with: anInteger with: '').!

ifExistTableNumber: index do: aBlock

	(self tableNumber: index) ifNil: [^nil].
	^aBlock value!

insertTable
	| tables range table |

	tables := self tables.
	range := self getSelection getProperty: 'Range'.
	self getSelection value: String lineDelimiter.
	"document invoke: 'HomeKey' with: 3."
	self getSelection invoke: 'EndKey' with: 6 "wdStory".
	table  := tables invoke: 'Add' withArguments: (OrderedCollection 
									with: range "Range" 
									with: 1 "NumRows"
									with: 1 "NumColumns"
									with: 1 "DefaultTableBehavior := wdWord9TableBehavior"
									with: 0 "AutoFitBehavior := wdAutoFitFixed").
	self getSelection value: String lineDelimiter.
	self getSelection invoke: 'EndKey' with: 6 "wdStory".
	^table!

isOpen
	" Answer whether the application of the receiver is Open or not "

	[document getProperty: 'Visible'] on: Error do:[:e | ^false].
	^true
!

parameters: aPath

	"Private -  Answer anArray with the parameters for open a MS-Word document "

	| array |

	array := Array new: 10. 
	array at: 1 put: aPath. (array at: 2 put: false). (array at: 3 put: false). (array at: 4 put: false).
	array at: 5 put: ''.
	array at: 6 put: ''. 
	array at: 7 put: false.
	array at: 8 put: ''.
	array at: 9 put: ''.
	array at: 10 put: 0.
	^array!

rangeOfTableNumber: anInteger 

	^self ifExistTableNumber: anInteger do: [^(self tableNumber: anInteger) getProperty: 'Range']!

setTextFromClipboard

	^self getSelection invoke: 'PasteAndFormat' with: 0 "0 - wdPasteDefault"!

setTextOfTableNumber: anInteger  with: aString

	^(self rangeOfTableNumber: anInteger) setProperty: 'Text' value: aString.!

tableNumber: index

	^self tables contents at: index ifAbsent: [^nil]!

tables

	^(document getProperty: 'ActiveDocument') getProperty: 'Tables'!

workbooks

	" Answer aString with the property name of MS-Excel work books "

	^'Documents'! !
!MSWord categoriesFor: #activeDocument!public! !
!MSWord categoriesFor: #applicationName!public! !
!MSWord categoriesFor: #changeDirectoryTo:!public! !
!MSWord categoriesFor: #deleteTableNumber:!public!tables! !
!MSWord categoriesFor: #deleteTextOfTableNumber:!public!tables! !
!MSWord categoriesFor: #extension!public! !
!MSWord categoriesFor: #findText:!public! !
!MSWord categoriesFor: #findTextWithReset:!public! !
!MSWord categoriesFor: #getAllText!public! !
!MSWord categoriesFor: #getRequirementNameAndCode!public! !
!MSWord categoriesFor: #getSelection!public! !
!MSWord categoriesFor: #getTextOfTableNumber:!public!tables! !
!MSWord categoriesFor: #goToTableNumber:!public!tables! !
!MSWord categoriesFor: #ifExistTableNumber:do:!public!tables! !
!MSWord categoriesFor: #insertTable!public!tables! !
!MSWord categoriesFor: #isOpen!public! !
!MSWord categoriesFor: #parameters:!private! !
!MSWord categoriesFor: #rangeOfTableNumber:!public!tables! !
!MSWord categoriesFor: #setTextFromClipboard!public! !
!MSWord categoriesFor: #setTextOfTableNumber:with:!public!tables! !
!MSWord categoriesFor: #tableNumber:!public!tables! !
!MSWord categoriesFor: #tables!public!tables! !
!MSWord categoriesFor: #workbooks!public! !

!MSWord class methodsFor!

extension

	^'doc'! !
!MSWord class categoriesFor: #extension!public! !

