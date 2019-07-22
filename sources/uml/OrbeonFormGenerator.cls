"Filed out from Dolphin Smalltalk 7"!

Object subclass: #OrbeonFormGenerator
	instanceVariableNames: 'formDefinitionStream isGemStoneForm xmlChunks applicatiohName formName sectionName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OrbeonFormGenerator guid: (GUID fromString: '{ef2355ce-a05d-45dc-a164-b87228eb8c8e}')!
OrbeonFormGenerator comment: ''!
!OrbeonFormGenerator categoriesForClass!Unclassified! !
!OrbeonFormGenerator methodsFor!

applicatiohName
	^applicatiohName!

applicatiohName: anObject
	applicatiohName := anObject!

closeBodyTagFor: anUMLClass

	formDefinitionStream nextPutAll: '</xh:body>'!

closeHtmlTagFor: anUMLClass

	formDefinitionStream nextPutAll: '</xh:html>'!

formDefinitionStream
	^formDefinitionStream!

formDefinitionStream: anObject
	formDefinitionStream := anObject!

formName
	^formName!

formName: anObject
	formName := anObject!

generateOrbeonFormFor: anUMLClass

	self generateXmlChunksFor: anUMLClass.

	self openHtmlTagFor: anUMLClass.

	self closeHtmlTagFor: anUMLClass!

generateXmlChunksFor: anUMLClass

	anUMLClass basicVariables do: [:classAttribute | 
		xmlChunks add: (OrbeonFormFieldChunk newForUMLField: classAttribute).
	].!

initialize

	super initialize.

	formDefinitionStream := WriteStream on: String new.
	isGemStoneForm := false.

	xmlChunks := OrderedCollection new.

	sectionName := 'form-variables-section'.!

isGemStoneForm
	^isGemStoneForm!

isGemStoneForm: anObject
	isGemStoneForm := anObject!

openBodyTagFor: anUMLClass!

openHtmlTagFor: anUMLClass

	formDefinitionStream nextPutAll: '<xh:html ' , self xmlnsNamespacesString , '>'.

	formDefinitionStream 
		nextPutAll: '<xh:head>';
		nextPutAll: '<xh:meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>';
		nextPutAll: '<xh:title> Form for UML Class ' , anUMLClass name , '</xh:title>'.

	self openXfModelTagFor: anUMLClass.

	formDefinitionStream nextPutAll: '</xh:head>'.

	self openBodyTagFor: anUMLClass.
	self closeBodyTagFor: anUMLClass.!

openXfModelTagFor: anUMLClass

	formDefinitionStream nextPutAll: '<xf:model id="fr-form-model" xxf:expose-xpath-types="true" xxf:analysis.calculate="true">'.

	self writeXfInstanceFor: anUMLClass.

	self writeXfBindingsFor: anUMLClass.

	self writeMetadataFor: anUMLClass.

	self writeAttachmentFor: anUMLClass.

	self writeResourcesFor: anUMLClass.

	self writeServicesFor: anUMLClass.

	formDefinitionStream nextPutAll: '</xf:model>'.!

sectionName
	^sectionName!

sectionName: anObject
	sectionName := anObject!

writeAttachmentFor: anUMLClass!

writeFrFormInstanceFor: anUMLClass

	formDefinitionStream nextPutAll: '<', sectionName,'>'.

		xmlChunks do: [:orbeonFormXmlChunk | orbeonFormXmlChunk writeMainInstanceOn: formDefinitionStream].

	formDefinitionStream nextPutAll: '</', sectionName,'>'.!

writeGemStoneFormSection

	formDefinitionStream nextPutAll: 
'<internal-section-seaside>
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
</internal-section-user>'.!

writeMetadataFor: anUMLClass!

writeResourcesFor: anUMLClass!

writeServicesFor: anUMLClass!

writeXfBindingsFor: anUMLClass
	| id |

	formDefinitionStream nextPutAll: '<!!-- Bindings -->'.
	formDefinitionStream nextPutAll: '<xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">'.
	id := sectionName, '-bind'.

		formDefinitionStream nextPutAll: '<xf:bind id="',id,'" name="',sectionName ,'" ref="', sectionName ,'">'.

		xmlChunks do: [:orbeonFormFieldChunk | 
			orbeonFormFieldChunk writeBindingOn: formDefinitionStream.
		].

		formDefinitionStream nextPutAll: '</xf:bind>'.
	formDefinitionStream nextPutAll: '</xf:bind>'.!

writeXfInstanceFor: anUMLClass

	formDefinitionStream nextPutAll: '<xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">'.
	isGemStoneForm ifTrue: [self writeGemStoneFormSection].

	formDefinitionStream nextPutAll: '<form>'.

		self writeFrFormInstanceFor: anUMLClass.

	formDefinitionStream nextPutAll: '</form>'.

	formDefinitionStream nextPutAll: '</xf:instance>'!

xmlChunks
	^xmlChunks!

xmlChunks: anObject
	xmlChunks := anObject!

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
!OrbeonFormGenerator categoriesFor: #applicatiohName!accessing!private! !
!OrbeonFormGenerator categoriesFor: #applicatiohName:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #closeBodyTagFor:!main tag!public! !
!OrbeonFormGenerator categoriesFor: #closeHtmlTagFor:!main tag!public! !
!OrbeonFormGenerator categoriesFor: #formDefinitionStream!accessing!private! !
!OrbeonFormGenerator categoriesFor: #formDefinitionStream:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #formName!accessing!private! !
!OrbeonFormGenerator categoriesFor: #formName:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #generateOrbeonFormFor:!api!main tag!public! !
!OrbeonFormGenerator categoriesFor: #generateXmlChunksFor:!public!xml chunks! !
!OrbeonFormGenerator categoriesFor: #initialize!public! !
!OrbeonFormGenerator categoriesFor: #isGemStoneForm!accessing!private! !
!OrbeonFormGenerator categoriesFor: #isGemStoneForm:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #openBodyTagFor:!main tag!public! !
!OrbeonFormGenerator categoriesFor: #openHtmlTagFor:!main tag!public! !
!OrbeonFormGenerator categoriesFor: #openXfModelTagFor:!main tag!public! !
!OrbeonFormGenerator categoriesFor: #sectionName!accessing!private! !
!OrbeonFormGenerator categoriesFor: #sectionName:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #writeAttachmentFor:!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #writeFrFormInstanceFor:!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #writeGemStoneFormSection!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #writeMetadataFor:!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #writeResourcesFor:!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #writeServicesFor:!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #writeXfBindingsFor:!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #writeXfInstanceFor:!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #xmlChunks!accessing!private! !
!OrbeonFormGenerator categoriesFor: #xmlChunks:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #xmlnsNamespacesString!public! !

!OrbeonFormGenerator class methodsFor!

new

	^super new initialize! !
!OrbeonFormGenerator class categoriesFor: #new!public! !

