"Filed out from Dolphin Smalltalk 7"!

LicenciaPermanteSoftware subclass: #LicenciaPermanteRestringidaSoftware
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LicenciaPermanteRestringidaSoftware guid: (GUID fromString: '{c6ef2ef6-f266-486e-83ee-421040809712}')!
LicenciaPermanteRestringidaSoftware comment: ''!
!LicenciaPermanteRestringidaSoftware categoriesForClass!Unclassified! !
!LicenciaPermanteRestringidaSoftware methodsFor!

cantidadClases
	^cantidadClases!

cantidadClases: anObject
	cantidadClases := anObject!

initialize

	super initialize.

	cantidadClases := 20.!

printCantidadClases

	^cantidadClases printString!

printType

	^'Restricted License' !

removerClassesDe: anUMLModel

	(cantidadClases > anUMLModel umlClasses size)
	ifTrue: [anUMLModel classesDo: [:eachClass | ]] 
	ifFalse: [1 to: (anUMLModel umlClasses size - cantidadClases) do: [:index | (anUMLModel umlClasses at: index) setInstancesVariablesForLicence]].

	(fechaExpiracion < Date today) 
	ifTrue: [anUMLModel classesDo: [:eachClass | eachClass setInstancesVariablesForLicence].].

	anUMLModel umlClasses. ! !
!LicenciaPermanteRestringidaSoftware categoriesFor: #cantidadClases!accessing!private! !
!LicenciaPermanteRestringidaSoftware categoriesFor: #cantidadClases:!accessing!private! !
!LicenciaPermanteRestringidaSoftware categoriesFor: #initialize!public! !
!LicenciaPermanteRestringidaSoftware categoriesFor: #printCantidadClases!public! !
!LicenciaPermanteRestringidaSoftware categoriesFor: #printType!public! !
!LicenciaPermanteRestringidaSoftware categoriesFor: #removerClassesDe:!public! !

