"Filed out from Dolphin Smalltalk 7"!

LicenciaPermanteSoftware subclass: #LicenciaPermanteTotalSoftware
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LicenciaPermanteTotalSoftware guid: (GUID fromString: '{ff65bcbf-6037-4188-9d63-d3c28d9b555b}')!
LicenciaPermanteTotalSoftware comment: ''!
!LicenciaPermanteTotalSoftware categoriesForClass!Unclassified! !
!LicenciaPermanteTotalSoftware methodsFor!

expiro

	^false!

printFechaExpiracion

	^'NO Expiration Date'!

printType

	^'Permanent License' !

removerClassesDe: anUMLModel

	anUMLModel classesDo: [:eachClass | ].

	anUMLModel umlClasses. ! !
!LicenciaPermanteTotalSoftware categoriesFor: #expiro!public! !
!LicenciaPermanteTotalSoftware categoriesFor: #printFechaExpiracion!public! !
!LicenciaPermanteTotalSoftware categoriesFor: #printType!public! !
!LicenciaPermanteTotalSoftware categoriesFor: #removerClassesDe:!public! !

