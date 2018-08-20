"Filed out from Dolphin Smalltalk 7"!

UMLDialog subclass: #UMLDoesNotUnderstadoDialog
	instanceVariableNames: 'umlDoesNotUnderstadoComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLDoesNotUnderstadoDialog guid: (GUID fromString: '{5fe23cdc-9aff-4a9c-a016-1d463ddc351a}')!
UMLDoesNotUnderstadoDialog comment: ''!
!UMLDoesNotUnderstadoDialog categoriesForClass!Unclassified! !
!UMLDoesNotUnderstadoDialog methodsFor!

answer
	| snapshot error umlObject symbol |

	symbol := self subject at: 1.
	umlObject := self subject at: 2.
	snapshot := self subject at: 3.

	error := self defaultVirtualMachine errorClass 
				vmPerform: #message: 
				withArguments: (Array with: (('Not found implementation named <', symbol, '> for class named <', umlObject className, '>') asUMLObject: self defaultVirtualMachine)).

	snapshot ifNotNil: [:value | snapshot exception: error].

	^error
		!

createComponents
	super createComponents.

	umlDoesNotUnderstadoComposite := self add: UMLDoesNotUnderstadComposite new name: 'umlDoesNotUnderstadoComposite'!

model: anOrderedCollection
	"The object <anOrderedCollection> is composed as follow at: 
	1. failedMethodName
	2. receiver object
	3. the snapshot that fail"

	super model: anOrderedCollection.

	umlDoesNotUnderstadoComposite model: anOrderedCollection! !
!UMLDoesNotUnderstadoDialog categoriesFor: #answer!public! !
!UMLDoesNotUnderstadoDialog categoriesFor: #createComponents!public! !
!UMLDoesNotUnderstadoDialog categoriesFor: #model:!public! !

!UMLDoesNotUnderstadoDialog class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.DialogView)  98 30 0 0 98 2 26214401 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 328198 ##(Smalltalk.Point)  1401 351 679 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 656 0 482 8 4278190080 0 7 0 0 0 656 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLDoesNotUnderstadComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 21 21 530 1349 255 656 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 172 2 0 0 137 0 0 0] 608 530 193 193 0 27 8 'umlDoesNotUnderstadoComposite' 590342 ##(Smalltalk.Rectangle)  530 21 21 530 21 21 0 0 0 0 3 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore)  0 0 1 0 8 2012186948 834 202 208 98 2 898 928 98 2 530 3199 21 530 1401 351 416 898 8 #updateMenuBar 608 416 994 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 251 8 0 0 185 0 0 0] 98 1 656 1040 0 27 )! !
!UMLDoesNotUnderstadoDialog class categoriesFor: #resource_Default_view!public!resources-views! !

