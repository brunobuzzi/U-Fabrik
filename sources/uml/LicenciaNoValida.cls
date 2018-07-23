"Filed out from Dolphin Smalltalk 7"!

LicenciaSoftware subclass: #LicenciaNoValida
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LicenciaNoValida guid: (GUID fromString: '{2f05061e-0efa-48c5-8f5d-85a200487f07}')!
LicenciaNoValida comment: ''!
!LicenciaNoValida categoriesForClass!Unclassified! !
!LicenciaNoValida methodsFor!

esValida

	^false!

printType

	^'Invalid Software License' !

removerClassesDe: anUMLModel

	anUMLModel classesDo: [:eachClass | eachClass setInstancesVariablesForLicence].! !
!LicenciaNoValida categoriesFor: #esValida!public! !
!LicenciaNoValida categoriesFor: #printType!public! !
!LicenciaNoValida categoriesFor: #removerClassesDe:!public! !

