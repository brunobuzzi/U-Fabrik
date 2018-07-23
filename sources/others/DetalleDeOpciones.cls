"Filed out from Dolphin Smalltalk 7"!

BBDialog subclass: #DetalleDeOpciones
	instanceVariableNames: 'listaP containerP'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DetalleDeOpciones guid: (GUID fromString: '{b4c3cd28-17d4-48e8-bbfe-abaf6e8af852}')!
DetalleDeOpciones comment: ''!
!DetalleDeOpciones categoriesForClass!Unclassified! !
!DetalleDeOpciones methodsFor!

containerP
	"Private - Answer the value of the receiver's ''containerP'' instance variable."

	^containerP!

containerP: anObject
	"Private - Set the value of the receiver's ''containerP'' instance variable to the argument, anObject."

	containerP := anObject!

createComponents
	super createComponents.

	containerP := self add: Presenter new name: 'container'.!

formatoListaPara: unIdentificadorDeView

	" Desplega en el receptor del mensaje una lista para desplegar los datos de un usuario (unIdentificadorDeView es un String) "

	self vaciarContenedorDeListas.
	listaP := ListPresenter create: unIdentificadorDeView in: containerP.
	self createSchematicWiring.
	listaP model: (ListModel on: self subject).
	listaP view contextMenu: nil.

	listaP when: #leftButtonDoubleClicked: send: #ok to: self.!

listaP
	"Private - Answer the value of the receiver's ''listaP'' instance variable."

	^listaP!

listaP: anObject
	"Private - Set the value of the receiver's ''listaP'' instance variable to the argument, anObject."

	listaP := anObject!

ok

	(listaP hasSelection) ifFalse:[self exit.^nil].
	self model: self seleccion.
	
	self apply.
	self answer.
	self view close.!

onViewOpened

	super onViewOpened.

"	self setImageOf: 'aceptar' with: self administradorDeIconos aceptarIcon.
	self setImageOf: 'cancelar' with: self administradorDeIconos cancelarIcon.
	self setImageOf: 'cerrar' with: self administradorDeIconos cerrarIcon."!

seleccion

	" Devuelve una coleccion con los elementos seleccionados en el recptor del mensaje "
	
	(listaP hasSelection)
	ifTrue:[(listaP selection isKindOf: Collection)
		ifTrue:[^listaP selection]
		ifFalse:[^Array with: listaP selection].].!

selection: unObjeto ifAbsent: aBlock

	" Pone como seleccionado a unObjecto en la lista del receptor del mensaje "

	^listaP selection: unObjeto ifAbsent: aBlock!

setFirstColumnOrder: aDyadicValuableOrNil

	listaP view columnsList first sortBlock: aDyadicValuableOrNil!

setTextBlock: aOneArgBlock

	listaP view getTextBlock: aOneArgBlock

	!

vaciarContenedorDeListas

	" Vacia el contenido de el contendor ('container') del receptor del mensaje "

	containerP subPresenters do:[:each | containerP remove: each]! !
!DetalleDeOpciones categoriesFor: #containerP!public! !
!DetalleDeOpciones categoriesFor: #containerP:!public! !
!DetalleDeOpciones categoriesFor: #createComponents!public! !
!DetalleDeOpciones categoriesFor: #formatoListaPara:!public! !
!DetalleDeOpciones categoriesFor: #listaP!public! !
!DetalleDeOpciones categoriesFor: #listaP:!public! !
!DetalleDeOpciones categoriesFor: #ok!public! !
!DetalleDeOpciones categoriesFor: #onViewOpened!public! !
!DetalleDeOpciones categoriesFor: #seleccion!public! !
!DetalleDeOpciones categoriesFor: #selection:ifAbsent:!public! !
!DetalleDeOpciones categoriesFor: #setFirstColumnOrder:!public! !
!DetalleDeOpciones categoriesFor: #setTextBlock:!public! !
!DetalleDeOpciones categoriesFor: #vaciarContenedorDeListas!public! !

!DetalleDeOpciones class methodsFor!

defaultModel

	^(ListModel on: OrderedCollection new)!

defaultView

	^'DetalleDeOpcionesView'!

listaCon: anOrderedCollection para: unIdentificadorDeView

	^self listaCon: anOrderedCollection para: unIdentificadorDeView titulo: '' ventanaPrincipal: self defaultView
!

listaCon: anOrderedCollection para: unIdentificadorDeView titulo: unaCadena

	^(self createOn: anOrderedCollection)
		formatoListaPara: unIdentificadorDeView; 
		caption: unaCadena; 
		showModal!

listaCon: anOrderedCollection para: unIdentificadorDeView titulo: unaCadena orden: aBlock

	^(self createOn: anOrderedCollection)
		formatoListaPara: unIdentificadorDeView; 
		caption: unaCadena; 
		setFirstColumnOrder: aBlock;
		showModal!

listaCon: anOrderedCollection para: unIdentificadorDeView titulo: unaCadena selection: unObjeto

	^(self createOn: anOrderedCollection); formatoListaPara: unIdentificadorDeView; caption: unaCadena; selection: unObjeto ifAbsent:[]; showModal!

listaCon: anOrderedCollection para: unIdentificadorDeView titulo: unaCadena selection: unObjeto ventanaPrincipal: aViewName

	^(self create: aViewName on: anOrderedCollection); formatoListaPara: unIdentificadorDeView; caption: unaCadena; selection: unObjeto ifAbsent:[]; showModal!

listaCon: anOrderedCollection para: unIdentificadorDeView titulo: unaCadena ventanaPrincipal: aViewName

	^(self create: aViewName on: anOrderedCollection); formatoListaPara: unIdentificadorDeView; caption: unaCadena; showModal!

listaCon: anOrderedCollection para: unIdentificadorDeView titulo: unaCadena ventanaPrincipal: aViewName extent: aPoint

	^(self create: aViewName on: anOrderedCollection); formatoListaPara: unIdentificadorDeView; caption: unaCadena; view extent: aPoint; showModal!

listaCon: anOrderedCollection para: unIdentificadorDeView ventanaPrincipal: aViewName

	^self listaCon: anOrderedCollection para: unIdentificadorDeView titulo: '' ventanaPrincipal: aViewName
!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.DialogView)  98 30 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 167 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1409286144 131073 592 0 0 0 7 0 0 0 592 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 720 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  21 21 882 829 719 592 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 168 1 0 0 113 1 0 0] 98 0 882 193 193 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 1 1050 1072 8 #fixedParentRight 1 1050 1072 8 #fixedParentTop 1 1050 1072 8 #fixedParentBottom -59 410 608 98 15 0 416 98 2 8 1140850688 131073 1200 0 0 0 7 0 0 0 1200 530 234 240 98 4 410 8 ##(Smalltalk.PushButton)  98 17 0 1200 98 2 8 1140924416 1 1312 0 0 0 7 0 0 0 1312 0 8 4294903049 1180998 4 ##(Smalltalk.CommandDescription)  8 #cancel 8 'Cancel' 1 1 0 0 32 754 202 208 98 2 818 848 98 2 882 679 15 882 151 47 1312 818 8 #text: 98 1 8 'Cancel' 1312 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 83 1 0 0 7 0 0 0 158 1 0 0 30 0 0 0] 98 0 992 0 27 1010 1050 1072 8 #fixedPreviousRight 21 1050 1072 8 #fixedViewLeft 151 1050 1072 8 #fixedViewBottom -45 1168 1 410 1328 98 17 0 1200 98 2 8 1141055488 1 1808 0 0 0 7 0 0 0 1808 0 8 4294903049 1410 8 #accept 8 'OK' 1 1 0 0 16 754 202 208 98 3 818 848 98 2 882 509 15 882 151 47 1808 818 8 #isEnabled: 98 1 32 1808 818 1600 98 1 8 'OK' 1808 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 254 0 0 0 7 0 0 0 73 1 0 0 30 0 0 0] 98 0 992 0 27 1010 1050 1072 8 #fixedViewRight -149 1104 -169 1776 -45 1168 1 234 256 720 590342 ##(Smalltalk.Rectangle)  882 11 11 882 1 1 754 202 208 98 1 818 848 98 2 882 21 739 882 829 61 1200 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 113 1 0 0 168 1 0 0 143 1 0 0] 98 2 1808 1312 992 0 27 1010 1056 1 1104 1 1168 -59 1168 1 234 256 98 2 592 8 'container' 2258 882 21 21 882 21 21 0 0 0 0 26173 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore)  0 0 1 0 8 1989842784 754 202 208 98 2 818 848 98 2 882 2879 21 882 901 891 416 818 8 #updateMenuBar 720 416 930 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 97 7 0 0 199 1 0 0] 98 2 592 1200 992 0 27 )!

resource_DetalleDeOpcionesView
	"Answer the literal data from which the 'DetalleDeOpcionesView' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_DetalleDeOpcionesView)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.DialogView)  98 30 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 167 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 592 0 0 0 7 0 0 0 592 530 234 240 98 4 410 8 ##(Smalltalk.PushButton)  98 17 0 592 98 2 8 1141055488 1 720 0 0 0 7 0 0 0 720 0 8 4294903049 1180998 4 ##(Smalltalk.CommandDescription)  8 #ok 8 'OK' 1 1 0 0 16 983302 ##(Smalltalk.MessageSequence)  202 208 98 3 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  509 15 1010 151 47 720 946 8 #isEnabled: 98 1 32 720 946 8 #text: 98 1 8 'OK' 720 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 254 0 0 0 7 0 0 0 73 1 0 0 30 0 0 0] 98 0 1010 193 193 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.FramingCalculation)  8 #fixedViewRight -149 1290 1312 8 #fixedParentRight -169 1290 1312 8 #fixedViewBottom -45 1290 1312 8 #fixedParentBottom 1 410 736 98 17 0 592 98 2 8 1140924416 1 1440 0 0 0 7 0 0 0 1440 0 8 4294903049 818 8 #cancel 8 'Cancel' 1 1 0 0 32 882 202 208 98 2 946 976 98 2 1010 679 15 1010 151 47 1440 946 1120 98 1 8 'Cancel' 1440 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 83 1 0 0 7 0 0 0 158 1 0 0 30 0 0 0] 98 0 1232 0 27 1250 1290 1312 8 #fixedPreviousRight 21 1290 1312 8 #fixedViewLeft 151 1376 -45 1408 1 234 256 98 0 590342 ##(Smalltalk.Rectangle)  1010 11 11 1010 1 1 882 202 208 98 1 946 976 98 2 1010 21 739 1010 829 61 592 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 113 1 0 0 168 1 0 0 143 1 0 0] 98 2 720 1440 1232 0 27 1250 1290 1312 8 #fixedParentLeft 1 1344 1 1408 -59 1408 1 410 608 98 15 0 416 98 2 8 1409286144 131073 2160 0 0 0 7 0 0 0 2160 1180166 ##(Smalltalk.ProportionalLayout)  234 240 1872 32 234 256 1872 0 882 202 208 98 1 946 976 98 2 1010 21 21 1010 829 719 2160 1170 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 168 1 0 0 113 1 0 0] 98 0 1232 0 27 1250 2128 1 1344 1 1290 1312 8 #fixedParentTop 1 1408 -59 234 256 98 2 2160 8 'container' 1890 1010 21 21 1010 21 21 0 0 0 0 26761 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore)  0 0 1 0 8 1989842784 882 202 208 98 2 946 976 98 2 1010 2879 21 1010 901 891 416 946 8 #updateMenuBar 1872 416 1170 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 97 7 0 0 199 1 0 0] 98 2 2160 592 1232 0 27 )!

resource_InformaView
	"Answer the literal data from which the 'InformaView' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_InformaView)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.DialogView)  98 30 0 0 98 2 26869761 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 0 167 0 0 0 416 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 8 ##(Smalltalk.LinkButton)  98 15 0 416 98 2 8 1140916224 1 576 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 519 0 0 0 576 0 8 4294903007 1180998 4 ##(Smalltalk.CommandDescription)  8 #exit 8 'Click to Close' 1 1 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  575 643 914 191 71 576 850 8 #text: 98 1 8 '<a>Click to Close</a>' 576 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 31 1 0 0 65 1 0 0 126 1 0 0 100 1 0 0] 98 0 914 193 193 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1114638 ##(Smalltalk.STBSingletonProxy)  8 ##(Smalltalk.FramingCalculation)  8 #fixedParentRight -209 1152 -19 1146 1168 8 #fixedParentBottom -89 1200 -19 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 1232 0 482 31 0 7 0 0 0 1232 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 1376 0 786 202 208 98 1 850 880 98 2 914 21 21 914 745 513 1232 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 126 1 0 0 10 1 0 0] 98 0 1088 0 27 1106 1146 1168 8 #fixedParentLeft 21 1152 -19 1146 1168 8 #fixedParentTop 21 1200 -199 234 256 98 2 1232 8 'container' 0 0 0 0 0 3 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore)  0 0 1 0 8 2010281373 786 202 208 98 2 850 880 98 2 914 2047 21 914 801 801 416 850 8 #updateMenuBar 1376 416 1026 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 3 0 0 10 0 0 0 143 5 0 0 154 1 0 0] 98 2 1232 576 1088 0 27 )! !
!DetalleDeOpciones class categoriesFor: #defaultModel!public! !
!DetalleDeOpciones class categoriesFor: #defaultView!public! !
!DetalleDeOpciones class categoriesFor: #listaCon:para:!public! !
!DetalleDeOpciones class categoriesFor: #listaCon:para:titulo:!public! !
!DetalleDeOpciones class categoriesFor: #listaCon:para:titulo:orden:!public! !
!DetalleDeOpciones class categoriesFor: #listaCon:para:titulo:selection:!public! !
!DetalleDeOpciones class categoriesFor: #listaCon:para:titulo:selection:ventanaPrincipal:!public! !
!DetalleDeOpciones class categoriesFor: #listaCon:para:titulo:ventanaPrincipal:!public! !
!DetalleDeOpciones class categoriesFor: #listaCon:para:titulo:ventanaPrincipal:extent:!public! !
!DetalleDeOpciones class categoriesFor: #listaCon:para:ventanaPrincipal:!public! !
!DetalleDeOpciones class categoriesFor: #resource_Default_view!public! !
!DetalleDeOpciones class categoriesFor: #resource_DetalleDeOpcionesView!public! !
!DetalleDeOpciones class categoriesFor: #resource_InformaView!public! !

