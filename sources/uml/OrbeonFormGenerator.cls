"Filed out from Dolphin Smalltalk 7"!

Object subclass: #OrbeonFormGenerator
	instanceVariableNames: 'formDefinitionStream umlClass isGemStoneForm xmlChunks applicationName formName sectionName xmlDocument xhHtmlNode'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OrbeonFormGenerator guid: (GUID fromString: '{ef2355ce-a05d-45dc-a164-b87228eb8c8e}')!
OrbeonFormGenerator comment: ''!
!OrbeonFormGenerator categoriesForClass!Unclassified! !
!OrbeonFormGenerator methodsFor!

appendXfInstanceTo: anIXMLDOMElement
	| xfInstanceNode sectionNode |

	anIXMLDOMElement addComment: 'Main instance'.

	xfInstanceNode := anIXMLDOMElement addElement: 'xf:instance'.

	xfInstanceNode setAttribute: 'id' value: 'fr-form-instance';
		setAttribute: 'xxf:exclude-result-prefixes' value: '#all';
		setAttribute: 'xxf:index' value: 'id'.
	
	sectionNode := (xfInstanceNode addElement: 'form') addElement: sectionName.

	umlClass basicVariables do: [:umlClassAttribute | sectionNode addElement: umlClassAttribute attributeName].

	

	!

appendXhBody!

appendXhHead
	| xhHeadNode xfModel |

	xhHeadNode := xhHtmlNode addElement: 'xh:head'.

	(xhHeadNode addElement: 'xh:title') text: self formTitle.

	xfModel := xhHeadNode addElement: 'xf:model'.

	xfModel setAttribute: 'id' value: 'fr-form-model';
		setAttribute: 'xxf:expose-xpath-types' value: 'true';
		setAttribute: 'xxf:analysis.calculate' value: 'true'.
	xfModel addComment: 'Main instance'.

	self appendXfInstanceTo: xfModel.

	self appendXfBindingsTo: xfModel.

	self appendMetadataTo: xfModel.

	self appendAttachmentsTo: xfModel.

	self appendResourcesTo: xfModel.!

appendXmlnsNamespaces

	xhHtmlNode 
		setAttribute: 'xmlns:xh' value: 'http://www.w3.org/1999/xhtml';
		setAttribute: 'xmlns:xf' value: 'http://www.w3.org/2002/xforms';
		setAttribute: 'xmlns:xs' value: 'http://www.w3.org/2001/XMLSchema';
		setAttribute: 'xmlns:xsi' value: 'http://www.w3.org/2001/XMLSchema-instance';
		setAttribute: 'xmlns:ev' value: 'http://www.w3.org/2001/xml-events';
		setAttribute: 'xmlns:xi' value: 'http://www.w3.org/2001/XInclude';
		setAttribute: 'xmlns:xxi' value: 'http://orbeon.org/oxf/xml/xinclude';
		setAttribute: 'xmlns:xxf' value: 'http://orbeon.org/oxf/xml/xforms';
		setAttribute: 'xmlns:map' value: 'http://www.w3.org/2005/xpath-functions/map';
		setAttribute: 'xmlns:array' value: 'http://www.w3.org/2005/xpath-functions/array';
		setAttribute: 'xmlns:exf' value: 'http://www.exforms.org/exf/1-0';
		setAttribute: 'xmlns:fr' value: 'http://orbeon.org/oxf/xml/form-runner';
		setAttribute: 'xmlns:saxon' value: 'http://saxon.sf.net/';
		setAttribute: 'xmlns:sql' value: 'http://orbeon.org/oxf/xml/sql';
		setAttribute: 'xmlns:soap' value: 'http://schemas.xmlsoap.org/soap/envelope/';
		setAttribute: 'xmlns:fb' value: 'http://orbeon.org/oxf/xml/form-builder'.
!

applicationName
	^applicationName!

applicationName: anObject
	applicationName := anObject!

closeBodyTagFor: anUMLClass

	formDefinitionStream nextPutAll: '</xh:body>'!

closeHtmlTagFor: anUMLClass

	formDefinitionStream nextPutAll: '</xh:html>'!

contents

	^formDefinitionStream contents!

formDefinitionStream
	^formDefinitionStream!

formDefinitionStream: anObject
	formDefinitionStream := anObject!

formName
	^formName!

formName: anObject
	formName := anObject!

formTitle

	^'Form for UML Class ' , umlClass name!

formTitleFor: anUMLClass

	^'Form for UML Class ' , anUMLClass name!

generateOrbeonFormFor: anUMLClass

	self generateXmlChunksFor: anUMLClass.

	self openHtmlTagFor: anUMLClass.

		self openBodyTagFor: anUMLClass.

			self writeFrViewTagFor: anUMLClass.

		self closeBodyTagFor: anUMLClass.

	self closeHtmlTagFor: anUMLClass!

generateXmlChunksFor: anUMLClass

	anUMLClass basicVariables do: [:classAttribute | 
		xmlChunks add: (OrbeonFormFieldChunk newForUMLField: classAttribute).
	].!

generateXMLDocumentFor: anUMLClass

	xmlDocument :=  IXMLDOMDocument new.

	self generateXmlChunksFor: anUMLClass.

	xhHtmlNode := xmlDocument addElement: 'xh:html'.

	self appendXmlnsNamespaces.
	
	self appendXhHead.

	self appendXhBody.!

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

openBodyTagFor: anUMLClass

	formDefinitionStream nextPutAll: '<xh:body>'.!

openHtmlTagFor: anUMLClass

	formDefinitionStream nextPutAll: '<xh:html ' , self xmlnsNamespacesString , '>'.

	formDefinitionStream 
		nextPutAll: '<xh:head>';
		nextPutAll: '<xh:meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>';
		nextPutAll: '<xh:title>', (self formTitleFor: anUMLClass),'</xh:title>'.

	self openXfModelTagFor: anUMLClass.

	formDefinitionStream nextPutAll: '</xh:head>'.!

openXfModelTagFor: anUMLClass

	formDefinitionStream nextPutAll: '<xf:model id="fr-form-model" xxf:expose-xpath-types="true" xxf:analysis.calculate="true">'.

	self writeXfInstanceFor: anUMLClass.

	self writeXfBindingsFor: anUMLClass.

	self writeMetadataFor: anUMLClass.

	self writeAttachmentFor: anUMLClass.

	self writeResourcesFor: anUMLClass.

	isGemStoneForm ifTrue: [self writeServicesFor: anUMLClass].

	formDefinitionStream nextPutAll: '</xf:model>'.!

sectionName
	^sectionName!

sectionName: anObject
	sectionName := anObject!

umlClass
	^umlClass!

umlClass: anObject
	umlClass := anObject!

writeAttachmentFor: anUMLClass

	formDefinitionStream nextPutAll: 
'            <!!-- Attachments -->
            <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments/>
            </xf:instance>'!

writeFrFormInstanceFor: anUMLClass

	formDefinitionStream nextPutAll: '<', sectionName,'>'.

		xmlChunks do: [:orbeonFormXmlChunk | orbeonFormXmlChunk writeMainInstanceOn: formDefinitionStream].

	formDefinitionStream nextPutAll: '</', sectionName,'>'.!

writeFrSectionTagFor: anUMLClass
	| id bind |

	id := sectionName, '-section'.
	bind := sectionName, '-bind'.

	formDefinitionStream nextPutAll: '<fr:section id="', id ,'" bind="', bind ,'">'.
		formDefinitionStream nextPutAll: '<xf:label ref="$form-resources/', sectionName ,'/label"/>'.
		formDefinitionStream nextPutAll: '<fr:grid id="grid-1-grid">'.

			xmlChunks keysAndValuesDo: [:index :orbeonFormFieldChunk | orbeonFormFieldChunk writeFrComponentOn: formDefinitionStream index: index printString].

		formDefinitionStream nextPutAll: '</fr:grid>'.

	formDefinitionStream nextPutAll: '</fr:section>'.!

writeFrViewTagFor: anUMLClass

	formDefinitionStream nextPutAll: '<fr:view>'.
		formDefinitionStream nextPutAll: '<fr:body xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:p="http://www.orbeon.com/oxf/pipeline"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors">'.

			self writeFrSectionTagFor: anUMLClass.

		formDefinitionStream nextPutAll: '</fr:body>'.

	formDefinitionStream nextPutAll: '</fr:view>'.
!

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

writeMetadataFor: anUMLClass

	formDefinitionStream 
		nextPutAll: '<!!-- Metadata -->';
		nextPutAll: '<xf:instance id="fr-form-metadata" xxf:readonly="true" xxf:exclude-result-prefixes="#all">';
		nextPutAll: '<metadata>';
		nextPutAll: '<application-name>', applicationName ,'</application-name>';
		nextPutAll: '<form-name>', formName ,'</form-name>';
		nextPutAll: '<title xml:lang="en">U-Fabrik Test Form</title>';
		nextPutAll: '<description xml:lang="en"/>';
		nextPutAll: '<created-with-version>2018.2.3.201905172253 PE</created-with-version>';
		nextPutAll: '</metadata>';
		nextPutAll: '</xf:instance>'.
!

writeResourcesFor: anUMLClass

	formDefinitionStream nextPutAll: '<!!-- All form resources -->'.
	formDefinitionStream nextPutAll: '<xf:instance xxf:readonly="true" id="fr-form-resources" xxf:exclude-result-prefixes="#all">'.
		formDefinitionStream nextPutAll: '<resources>'.
			formDefinitionStream nextPutAll: '<resource xml:lang="en">'.
				formDefinitionStream nextPutAll: '<',sectionName,'>'.
					formDefinitionStream nextPutAll: '<label>',sectionName capitalized ,'</label>'.
				formDefinitionStream nextPutAll: '</',sectionName,'>'.

				xmlChunks do: [:orbeonFormFieldChunk | orbeonFormFieldChunk writeResourcesOn: formDefinitionStream].

			formDefinitionStream nextPutAll: '</resource>'.
		formDefinitionStream nextPutAll: '</resources>'.
	formDefinitionStream nextPutAll: '</xf:instance>'.!

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

xmlDocument
	^xmlDocument!

xmlDocument: anObject
	xmlDocument := anObject!

xmlnsNamespacesString

	^'xmlns:xh="http://www.w3.org/1999/xhtml" 
	 xmlns:xf="http://www.w3.org/2002/xforms"
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
!OrbeonFormGenerator categoriesFor: #appendXfInstanceTo:!api!main tag!public!xml generation! !
!OrbeonFormGenerator categoriesFor: #appendXhBody!api!main tag!public!xml generation! !
!OrbeonFormGenerator categoriesFor: #appendXhHead!api!main tag!public!xml generation! !
!OrbeonFormGenerator categoriesFor: #appendXmlnsNamespaces!api!main tag!public!xml generation! !
!OrbeonFormGenerator categoriesFor: #applicationName!accessing!private! !
!OrbeonFormGenerator categoriesFor: #applicationName:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #closeBodyTagFor:!main tag!public! !
!OrbeonFormGenerator categoriesFor: #closeHtmlTagFor:!main tag!public! !
!OrbeonFormGenerator categoriesFor: #contents!main tag!public! !
!OrbeonFormGenerator categoriesFor: #formDefinitionStream!accessing!private! !
!OrbeonFormGenerator categoriesFor: #formDefinitionStream:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #formName!accessing!private! !
!OrbeonFormGenerator categoriesFor: #formName:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #formTitle!main tag!public! !
!OrbeonFormGenerator categoriesFor: #formTitleFor:!main tag!public! !
!OrbeonFormGenerator categoriesFor: #generateOrbeonFormFor:!api!main tag!public! !
!OrbeonFormGenerator categoriesFor: #generateXmlChunksFor:!public!xml chunks! !
!OrbeonFormGenerator categoriesFor: #generateXMLDocumentFor:!api!main tag!public!xml generation! !
!OrbeonFormGenerator categoriesFor: #initialize!public! !
!OrbeonFormGenerator categoriesFor: #isGemStoneForm!accessing!private! !
!OrbeonFormGenerator categoriesFor: #isGemStoneForm:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #openBodyTagFor:!main tag!public! !
!OrbeonFormGenerator categoriesFor: #openHtmlTagFor:!main tag!public! !
!OrbeonFormGenerator categoriesFor: #openXfModelTagFor:!main tag!public! !
!OrbeonFormGenerator categoriesFor: #sectionName!accessing!private! !
!OrbeonFormGenerator categoriesFor: #sectionName:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #umlClass!accessing!private! !
!OrbeonFormGenerator categoriesFor: #umlClass:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #writeAttachmentFor:!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #writeFrFormInstanceFor:!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #writeFrSectionTagFor:!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #writeFrViewTagFor:!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #writeGemStoneFormSection!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #writeMetadataFor:!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #writeResourcesFor:!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #writeServicesFor:!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #writeXfBindingsFor:!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #writeXfInstanceFor:!public!write fixed! !
!OrbeonFormGenerator categoriesFor: #xmlChunks!accessing!private! !
!OrbeonFormGenerator categoriesFor: #xmlChunks:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #xmlDocument!accessing!private! !
!OrbeonFormGenerator categoriesFor: #xmlDocument:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #xmlnsNamespacesString!public! !

!OrbeonFormGenerator class methodsFor!

new

	^super new initialize!

newOn: anUMLClass

	^super new initialize
		umlClass: anUMLClass;
		yourself! !
!OrbeonFormGenerator class categoriesFor: #new!public! !
!OrbeonFormGenerator class categoriesFor: #newOn:!public! !

