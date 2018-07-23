"Filed out from Dolphin Smalltalk 7"!

ExternalFile subclass: #MSOffice
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MSOffice guid: (GUID fromString: '{5ad31bd9-a15d-4a87-83f2-ce1fa01ed458}')!
MSOffice comment: '

instanceVariableNames:

document -- is KindOf: IDispatch, is the wrapper to the outside world'!
!MSOffice categoriesForClass!Unclassified! !
!MSOffice methodsFor!

activeDocument

	^self subclassResponsibility!

addSheet

	" Add a sheet to the receiver "

	^(document getProperty: self workbooks) invoke: 'Add'.

!

applicationName

	^self subclassResponsibility!

available

	[document name] on: Error do:[:e | ^false].
	^true!

changeDirectory

	" Change the receiver's directory "

	^self changeDirectoryTo: (File splitPathFrom: name)!

close: aBoolean

	"Private -  Close the receiver "

	(aBoolean) ifTrue:[self save].
	document invoke: 'Quit'.

	document := nil.!

create

	" Creates a MS OFFICE document "

	self createApplication.
	self addSheet.
	^document!

createApplication

	" Creates a MS OFFICE application "

	document := IDispatch createObject: self applicationName.
	document setProperty: 'Visible' value: true.!

createApplicationShow: aBoolean

	" Creates a MS OFFICE application "

	document := IDispatch createObject: self applicationName.
	document setProperty: 'Visible' value: aBoolean.!

createHidden

	" Creates a MS OFFICE document "

	self createApplicationShow: false.
	self addSheet.
	^document!

isOpen
	" Answer whether the application of the receiver is Open or not "

	^self subclassResponsibility 
!

open

	" Open and answer the receiver "

	| sheet |

	self createApplication.
	sheet := (document getProperty: self workbooks).
	self changeDirectory.
	sheet invoke: 'Open' with: name.
	^document!

save

	" Save the receiver in the HD "

	[self changeDirectory.
	(document getProperty: self activeDocument) invoke: 'SaveAs' with: name] on: Error do:[:e | ]!

serverRPCNotAvailableCode

	^1722!

showApplication

	document setProperty: 'Visible' value: true!

workbooks

	^self subclassResponsibility! !
!MSOffice categoriesFor: #activeDocument!public! !
!MSOffice categoriesFor: #addSheet!public! !
!MSOffice categoriesFor: #applicationName!public! !
!MSOffice categoriesFor: #available!public! !
!MSOffice categoriesFor: #changeDirectory!public! !
!MSOffice categoriesFor: #close:!private! !
!MSOffice categoriesFor: #create!public! !
!MSOffice categoriesFor: #createApplication!public! !
!MSOffice categoriesFor: #createApplicationShow:!public! !
!MSOffice categoriesFor: #createHidden!public! !
!MSOffice categoriesFor: #isOpen!public! !
!MSOffice categoriesFor: #open!public! !
!MSOffice categoriesFor: #save!public! !
!MSOffice categoriesFor: #serverRPCNotAvailableCode!public! !
!MSOffice categoriesFor: #showApplication!public! !
!MSOffice categoriesFor: #workbooks!public! !

!MSOffice class methodsFor!

create: pathFileName
	| document |

	(File exists: pathFileName) ifTrue:[File delete: pathFileName].
	document := super new initialize; name: pathFileName; yourself.
	document extensionControl ifFalse:[^nil].
	document createHidden.
	^document! !
!MSOffice class categoriesFor: #create:!public! !

