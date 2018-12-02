"Filed out from Dolphin Smalltalk 7"!

UMLComposite subclass: #LicenciaSoftwareComposite
	instanceVariableNames: 'namePresenter numberPresenter lockedPresenter startDatePresenter expirationDatePresenter typePresenter cantidadClasesPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LicenciaSoftwareComposite guid: (GUID fromString: '{d639e1d9-b4b3-47f4-8537-00962eda3917}')!
LicenciaSoftwareComposite comment: ''!
!LicenciaSoftwareComposite categoriesForClass!Unclassified! !
!LicenciaSoftwareComposite methodsFor!

createComponents

	super createComponents.

	namePresenter := self add: TextPresenter new name: 'namePresenter'.
	typePresenter := self add: TextPresenter new name: 'typePresenter'.
	numberPresenter := self add: TextPresenter new name: 'numberPresenter'.
	lockedPresenter := self add: TextPresenter new name: 'lockedPresenter'.
	startDatePresenter := self add: TextPresenter new name: 'startDatePresenter'.
	expirationDatePresenter := self add: TextPresenter new name: 'expirationDatePresenter'.
	cantidadClasesPresenter := self add: TextPresenter new name: 'cantidadClasesPresenter'.
!

model: aLicenciaSoftware

	super model: aLicenciaSoftware.

	typePresenter model: (aLicenciaSoftware aspectValue: #printType).
	namePresenter model: (aLicenciaSoftware aspectValue: #nombreEmpresa).
	numberPresenter model: (aLicenciaSoftware aspectValue: #cantidad).
	lockedPresenter model: (aLicenciaSoftware aspectValue: #printEstaBloqueada).
	startDatePresenter model: (aLicenciaSoftware aspectValue: #printFechaAdquirida).
	expirationDatePresenter model: (aLicenciaSoftware aspectValue: #printFechaExpiracion).
	cantidadClasesPresenter model: (aLicenciaSoftware aspectValue: #printCantidadClases).! !
!LicenciaSoftwareComposite categoriesFor: #createComponents!public! !
!LicenciaSoftwareComposite categoriesFor: #model:!public! !

!LicenciaSoftwareComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 416 0 234 256 98 14 410 8 ##(Smalltalk.StaticText)  98 16 0 416 98 2 8 1140850944 262145 560 0 0 0 5 0 0 0 560 0 8 4294903061 852486 ##(Smalltalk.NullConverter)  0 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  311 431 818 601 39 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 155 0 0 0 215 0 0 0 199 1 0 0 234 0 0 0] 98 0 818 193 193 0 27 8 'expirationDatePresenter' 410 576 98 16 0 416 98 2 8 1140850944 262145 960 0 0 0 5 0 0 0 960 0 8 4294903061 658 0 0 0 690 202 208 98 1 754 784 98 2 818 311 261 818 601 39 960 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 155 0 0 0 130 0 0 0 199 1 0 0 149 0 0 0] 98 0 928 0 27 8 'lockedPresenter' 410 576 98 16 0 416 98 2 8 1140850944 262145 1232 0 0 0 5 0 0 0 1232 0 8 4294903061 658 0 0 0 690 202 208 98 1 754 784 98 2 818 311 511 818 601 39 1232 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 155 0 0 0 255 0 0 0 199 1 0 0 18 1 0 0] 98 0 928 0 27 8 'cantidadClasesPresenter' 410 576 98 16 0 416 98 2 8 1140850944 262145 1504 0 0 0 5 0 0 0 1504 0 8 4294903061 658 0 0 0 690 202 208 98 1 754 784 98 2 818 311 101 818 601 41 1504 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 155 0 0 0 50 0 0 0 199 1 0 0 70 0 0 0] 98 0 928 0 27 8 'namePresenter' 410 576 98 16 0 416 98 2 8 1140850944 262145 1776 0 0 0 5 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 1 2 1 34 83 121 115 116 101 109 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 818 193 193 0 1776 0 8 4294903061 658 0 0 0 690 202 208 98 1 754 784 98 2 818 311 31 818 601 39 1776 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 155 0 0 0 15 0 0 0 199 1 0 0 34 0 0 0] 98 0 928 0 27 8 'typePresenter' 410 576 98 16 0 416 98 2 8 1140850944 262145 2144 0 0 0 5 0 0 0 2144 0 8 4294903061 658 0 0 0 690 202 208 98 1 754 784 98 2 818 311 181 818 601 39 2144 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 155 0 0 0 90 0 0 0 199 1 0 0 109 0 0 0] 98 0 928 0 27 8 'numberPresenter' 410 576 98 16 0 416 98 2 8 1140850944 262145 2416 0 0 0 5 0 0 0 2416 0 8 4294903061 658 0 0 0 690 202 208 98 1 754 784 98 2 818 311 351 818 601 39 2416 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 155 0 0 0 175 0 0 0 199 1 0 0 194 0 0 0] 98 0 928 0 27 8 'startDatePresenter' 0 690 202 208 98 1 754 784 98 2 818 3199 21 818 941 591 416 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 21 8 0 0 49 1 0 0] 98 14 410 576 98 16 0 416 98 2 8 1140850944 1 2848 0 0 0 5 0 0 0 2848 0 8 4294903061 658 0 0 0 690 202 208 98 2 754 784 98 2 818 31 101 818 241 39 2848 754 8 #text: 98 1 8 'Name' 2848 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 50 0 0 0 135 0 0 0 69 0 0 0] 98 0 928 0 27 1504 410 576 98 16 0 416 98 2 8 1140850944 1 3168 0 0 0 5 0 0 0 3168 0 8 4294903061 658 0 0 0 690 202 208 98 2 754 784 98 2 818 31 181 818 241 39 3168 754 3072 98 1 8 'Number of Licences' 3168 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 90 0 0 0 135 0 0 0 109 0 0 0] 98 0 928 0 27 2144 410 576 98 16 0 416 98 2 8 1140850944 1 3472 0 0 0 5 0 0 0 3472 0 8 4294903061 658 0 0 0 690 202 208 98 2 754 784 98 2 818 31 271 818 241 39 3472 754 3072 98 1 8 'Is locked' 3472 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 135 0 0 0 135 0 0 0 154 0 0 0] 98 0 928 0 27 410 576 98 16 0 416 98 2 8 1140850944 1 3776 0 0 0 5 0 0 0 3776 0 8 4294903061 658 0 0 0 690 202 208 98 2 754 784 98 2 818 31 361 818 241 39 3776 754 3072 98 1 8 'Start Date' 3776 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 180 0 0 0 135 0 0 0 199 0 0 0] 98 0 928 0 27 410 576 98 16 0 416 98 2 8 1140850944 1 4080 0 0 0 5 0 0 0 4080 0 8 4294903061 658 0 0 0 690 202 208 98 2 754 784 98 2 818 31 441 818 241 39 4080 754 3072 98 1 8 'Expiration Date' 4080 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 220 0 0 0 135 0 0 0 239 0 0 0] 98 0 928 0 27 410 576 98 16 0 416 98 2 8 1140850944 1 4384 0 0 0 5 0 0 0 4384 0 8 4294903061 658 0 0 0 690 202 208 98 2 754 784 98 2 818 31 31 818 241 39 4384 754 3072 98 1 8 'Type' 4384 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 15 0 0 0 135 0 0 0 34 0 0 0] 98 0 928 0 27 1776 410 576 98 16 0 416 98 2 8 1140850944 1 4688 0 0 0 5 0 0 0 4688 0 8 4294903061 658 0 0 0 690 202 208 98 2 754 784 98 2 818 31 521 818 271 41 4688 754 3072 98 1 8 'Number of UML Classes' 4688 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 4 1 0 0 150 0 0 0 24 1 0 0] 98 0 928 0 27 1232 960 2416 560 928 0 27 )! !
!LicenciaSoftwareComposite class categoriesFor: #resource_Default_view!public!resources-views! !

