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
				withArguments: (Array with: (('Not found implementation named [', symbol, '] for class named [', umlObject className, ']') asUMLObject: self defaultVirtualMachine)).

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

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.DialogView) 34 30 nil nil 8 #(13107200 65536) 416 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 328198 ##(Smalltalk.Point) 1441 371 679 nil nil nil 416 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() false 170 192 34 2 410 ##(Smalltalk.ReferenceView) 34 14 nil 416 34 2 8 1140850688 131073 640 nil 466 8 4278190080 nil 7 nil nil nil 640 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.UMLDoesNotUnderstadComposite) #resource_Default_view nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 514 21 21 514 1369 253 640 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 182 2 0 0 136 0 0 0] 592 514 193 193 nil 27 8 'umlDoesNotUnderstadoComposite' 590342 ##(Smalltalk.Rectangle) 514 21 21 514 21 21 nil nil nil nil 3 nil nil nil nil 1 nil nil 590598 ##(Smalltalk.Semaphore) nil nil 1 nil 8 2010117814 770 138 144 34 2 834 #createAt:extent: 34 2 514 2719 21 514 1441 371 416 834 #updateMenuBar 592 416 914 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 31 8 0 0 195 0 0 0] 34 1 640 960 nil 27 )! !
!UMLDoesNotUnderstadoDialog class categoriesFor: #resource_Default_view!public!resources-views! !

