"Filed out from Dolphin Smalltalk 7"!

UMLDialog subclass: #LicenciaSoftwareDialog
	instanceVariableNames: 'licenciaComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LicenciaSoftwareDialog guid: (GUID fromString: '{f0705deb-9ff6-4bf2-931a-6446f0044044}')!
LicenciaSoftwareDialog comment: ''!
!LicenciaSoftwareDialog categoriesForClass!Unclassified! !
!LicenciaSoftwareDialog methodsFor!

createComponents

	super createComponents.

	licenciaComposite := self add: LicenciaSoftwareComposite new name: 'licenciaComposite'.!

model: aLicenciaSoftware

	super model: aLicenciaSoftware.

	licenciaComposite model: aLicenciaSoftware.! !
!LicenciaSoftwareDialog categoriesFor: #createComponents!public! !
!LicenciaSoftwareDialog categoriesFor: #model:!public! !

!LicenciaSoftwareDialog class methodsFor!

defaultModel

	^LicenciaSoftware current!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.DialogView)  98 30 0 0 98 2 26214401 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 167 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 624 0 482 8 4278190080 0 7 0 0 0 624 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.LicenciaSoftwareComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  21 21 930 939 575 624 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 223 1 0 0 41 1 0 0] 576 930 193 193 0 27 8 'licenciaComposite' 590342 ##(Smalltalk.Rectangle)  930 21 21 930 21 21 0 0 0 0 3 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore)  0 0 1 0 8 1997179204 802 202 208 98 3 866 896 98 2 930 3199 21 930 991 671 416 866 8 #text: 98 1 8 'License Viewer' 416 866 8 #updateMenuBar 576 416 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 46 8 0 0 89 1 0 0] 98 1 624 1024 0 27 )! !
!LicenciaSoftwareDialog class categoriesFor: #defaultModel!public! !
!LicenciaSoftwareDialog class categoriesFor: #resource_Default_view!public!resources-views! !

