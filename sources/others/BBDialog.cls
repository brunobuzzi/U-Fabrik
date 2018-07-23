"Filed out from Dolphin Smalltalk 7"!

Dialog subclass: #BBDialog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BBDialog guid: (GUID fromString: '{2e0a5e95-a765-469a-a001-ea5fce6a0861}')!
BBDialog comment: ''!
!BBDialog categoriesForClass!Unclassified! !
!BBDialog methodsFor!

conectarModeloConPresenter: unModelo

	^self!

instanciaAdministradoraDeIconos
	^self class administradorDeIconos!

instanciaAdministradoraDeVentanas

	^self class instanciaAdministradoraDeVentanas!

isOAObject

	^self class isOAObject!

model: unModelo

	" Conecta el modelo del receptor del mensaje unModelo con los diferentes componentes de receptor del mensaje "

	super model: unModelo.

	self conectarModeloConPresenter: unModelo!

registerAdditionalAccelerators
	"Private - Register any accelerators supported by the receiver which are not in the menu bar."

	| additions |
	additions := self allAdditionalAccelerators.
	additions isEmpty 
		ifFalse: 
			[| accelerators |
			(accelerators := self view acceleratorTable) isNil 
				ifTrue: [accelerators := AcceleratorTable new].
			additions do: 
					[:each | 
					(CommandDescription command: each first)
						acceleratorKeyString: each last;
						registerAcceleratorKeyIn: accelerators].
			self view acceleratorTable: accelerators]!

transactionFor: aModel
	" Set the #transaction of the receiver (should be the identical transaction in the receiver and in <aModel>) "

	(aModel transaction isNil or:[aModel transaction environment isNil]) ifTrue:[^self sistema newTransaction].
	^aModel transaction.! !
!BBDialog categoriesFor: #conectarModeloConPresenter:!public! !
!BBDialog categoriesFor: #instanciaAdministradoraDeIconos!public! !
!BBDialog categoriesFor: #instanciaAdministradoraDeVentanas!public! !
!BBDialog categoriesFor: #isOAObject!public! !
!BBDialog categoriesFor: #model:!public! !
!BBDialog categoriesFor: #registerAdditionalAccelerators!public! !
!BBDialog categoriesFor: #transactionFor:!public! !

!BBDialog class methodsFor!

isOAObject

	^false! !
!BBDialog class categoriesFor: #isOAObject!public! !

