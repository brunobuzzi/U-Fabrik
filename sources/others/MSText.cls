"Filed out from Dolphin Smalltalk 7"!

ExternalFile subclass: #MSText
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MSText guid: (GUID fromString: '{5c446d8d-a6e5-42bd-b706-16ab1651579f}')!
MSText comment: 'Esta clase representa un archivo Notepad del sistema operativo MS Windows'!
!MSText categoriesForClass!Unclassified! !
!MSText methodsFor!

available

	" Indica si cuando la ventana del receptor del mensaje esta disponible "

	^(super available and:[document hasView])!

close: aBoolean

	aBoolean ifTrue: [self save].
	document view close.

	super close: aBoolean.!

closeAndSave
	" Close and Save the receiver "

	[self save.
	self isOpen ifTrue:[document exit].
	document := nil.] on: Error do:[:e | ].
	document := nil.!

create

	" Creates a MS Notepad document "

	^self open!

createHidden

	name isNil
	ifTrue: [document := Notepad create]
	ifFalse: [document := Notepad create openFile: name].
	document filename: name.
	^document!

extension

	^'txt'!

free

	document exit!

freeAndSave
	" Free OS document's pointer "

	self save.
	self isOpen ifTrue:[document exit].
	document := nil.!

isOpen
	" Answer whether the application of the receiver is Open or not "

	^document hasView!

open
	" Open and answer the receiver "

	name isNil
	ifTrue: [document := Notepad show]
	ifFalse: [document := Notepad show openFile: name].
	document filename: name.
	^document!

save

	" Save the receiver in the HD "

	[document fileSave] on: Error do:[:error | ].! !
!MSText categoriesFor: #available!public! !
!MSText categoriesFor: #close:!public! !
!MSText categoriesFor: #closeAndSave!public! !
!MSText categoriesFor: #create!public! !
!MSText categoriesFor: #createHidden!public! !
!MSText categoriesFor: #extension!public! !
!MSText categoriesFor: #free!public! !
!MSText categoriesFor: #freeAndSave!public! !
!MSText categoriesFor: #isOpen!public! !
!MSText categoriesFor: #open!public! !
!MSText categoriesFor: #save!public! !

!MSText class methodsFor!

extension

	^'txt'! !
!MSText class categoriesFor: #extension!public! !

