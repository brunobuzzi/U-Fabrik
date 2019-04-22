"Filed out from Dolphin Smalltalk 7"!

Object subclass: #OrbeonFormGenerator
	instanceVariableNames: 'formDefinitionStream'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OrbeonFormGenerator guid: (GUID fromString: '{ef2355ce-a05d-45dc-a164-b87228eb8c8e}')!
OrbeonFormGenerator comment: ''!
!OrbeonFormGenerator categoriesForClass!Unclassified! !
!OrbeonFormGenerator methodsFor!

formDefinitionStream
	^formDefinitionStream!

formDefinitionStream: anObject
	formDefinitionStream := anObject!

generateOrbeonFormFor: anUMLClass

	formDefinitionStream 
		nextPutAll: '<xh:html ', self xmlnsNamespacesString, '>';
		nextPutAll: '<xh:head>';
		nextPutAll: '<xh:meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>';
		nextPutAll: '<xh:title> Form for UML Class ', anUMLClass name,'</xh:title>';
		nextPutAll: '<xf:model id="fr-form-model" xxf:expose-xpath-types="true">';
		nextPutAll: '<xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">'.

	self writeFrFormInstanceFor: anUMLClass.
!

initialize

	super initialize.

	formDefinitionStream := WriteStream on: String new.!

writeFrFormInstanceFor: anUMLClass

	formDefinitionStream nextPutAll: '
<form>
	<internal-section-seaside>
		<s/>
		<k/>
		<uuid/>
		<oop/>
		<assignmentOop/>
	</internal-section-seaside>
	<internal-section-user>
		<username/>
		<rol/>
		<processId/>
	</internal-section-user>'.

	self writeFrFormInstanceUMLClassBasicVariablesFor: anUMLClass.
	formDefinitionStream nextPutAll: '</form>'.!

writeFrFormInstanceUMLClassBasicVariablesFor: anUMLClass

	formDefinitionStream nextPutAll: '<form-variables>'.


	formDefinitionStream nextPutAll: '</form-variables>'.
!

xmlnsNamespacesString

	^'xmlns:xh="http://www.w3.org/1999/xhtml" xmlns:xf="http://www.w3.org/2002/xforms"
         xmlns:xs="http://www.w3.org/2001/XMLSchema"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xmlns:ev="http://www.w3.org/2001/xml-events"
         xmlns:xi="http://www.w3.org/2001/XInclude"
         xmlns:xxi="http://orbeon.org/oxf/xml/xinclude"
         xmlns:xxf="http://orbeon.org/oxf/xml/xforms"
         xmlns:map="http://www.w3.org/2005/xpath-functions/map"
         xmlns:array="http://www.w3.org/2005/xpath-functions/array"
         xmlns:exf="http://www.exforms.org/exf/1-0"
         xmlns:fr="http://orbeon.org/oxf/xml/form-runner"
         xmlns:saxon="http://saxon.sf.net/"
         xmlns:sql="http://orbeon.org/oxf/xml/sql"
         xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
         xmlns:fb="http://orbeon.org/oxf/xml/form-builder"'! !
!OrbeonFormGenerator categoriesFor: #formDefinitionStream!accessing!private! !
!OrbeonFormGenerator categoriesFor: #formDefinitionStream:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #generateOrbeonFormFor:!public! !
!OrbeonFormGenerator categoriesFor: #initialize!public! !
!OrbeonFormGenerator categoriesFor: #writeFrFormInstanceFor:!public! !
!OrbeonFormGenerator categoriesFor: #writeFrFormInstanceUMLClassBasicVariablesFor:!public! !
!OrbeonFormGenerator categoriesFor: #xmlnsNamespacesString!public! !

