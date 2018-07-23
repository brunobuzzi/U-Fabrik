"Filed out from Dolphin Smalltalk 7"!

LicenciaValida subclass: #LicenciaTemporalSoftware
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LicenciaTemporalSoftware guid: (GUID fromString: '{b823ff34-82f4-4271-a93b-a5df37df2e07}')!
LicenciaTemporalSoftware comment: ''!
!LicenciaTemporalSoftware categoriesForClass!Unclassified! !
!LicenciaTemporalSoftware methodsFor!

printType

	^'Temporary License' !

removerClassesDe: anUMLModel

	(fechaExpiracion < Date today) 
	ifTrue: [anUMLModel classesDo: [:eachClass | eachClass setInstancesVariablesForLicence].].

	anUMLModel classesDo: [:eachClass | ].

	anUMLModel umlClasses. ! !
!LicenciaTemporalSoftware categoriesFor: #printType!public! !
!LicenciaTemporalSoftware categoriesFor: #removerClassesDe:!public! !

