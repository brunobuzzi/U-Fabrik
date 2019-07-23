"Filed out from Dolphin Smalltalk 7"!

Object subclass: #OrbeonFormGenerator
	instanceVariableNames: 'configuration sectionName xmlDocument xhHtmlNode xhNode'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OrbeonFormGenerator guid: (GUID fromString: '{ef2355ce-a05d-45dc-a164-b87228eb8c8e}')!
OrbeonFormGenerator comment: ''!
!OrbeonFormGenerator categoriesForClass!Unclassified! !
!OrbeonFormGenerator methodsFor!

appendAttachmentsTo: anIXMLDOMElement

	anIXMLDOMElement addComment: 'Attachments'.

	(anIXMLDOMElement addElement: 'xf:instance')
		addElement: 'attachments';
		setAttribute: 'id' value: 'fr-form-attachments';
		setAttribute: 'xxf:exclude-result-prefixes' value: '#all'.
!

appendMetadataTo: anIXMLDOMElement
	| xfInstanceNode metadataNode |

	anIXMLDOMElement addComment: 'Metadata'.

	xfInstanceNode := anIXMLDOMElement addElement: 'xf:instance'.
	xfInstanceNode setAttribute: 'id' value: 'fr-form-metadata';
		setAttribute: 'xxf:readonly' value: 'true';
		setAttribute: 'xxf:exclude-result-prefixes' value: '#all'.

	metadataNode := xfInstanceNode addElement: 'metadata'.
	(metadataNode addElement: 'application-name') text: self applicationName.
	(metadataNode addElement: 'form-name') text: self formName.
	((metadataNode addElement: 'title') 
		text: self formTitle; 
		setAttribute: 'xml:lang' value: 'en').

	(metadataNode addElement: 'description') setAttribute: 'xml:lang' value: 'en'.

	(metadataNode addElement: 'created-with-version') text: '2018.2.3.201905172253 PE'.

!

appendResourcesTo: anIXMLDOMElement
	| xfInstanceNode resourceNode |

	anIXMLDOMElement addComment: 'All form resources'.

	xfInstanceNode := anIXMLDOMElement addElement: 'xf:instance'.

	xfInstanceNode setAttribute: 'id' value: 'fr-form-resources';
		setAttribute: 'xxf:readonly' value: 'true';
		setAttribute: 'xxf:exclude-result-prefixes' value: '#all'.
	
	resourceNode := (xfInstanceNode addElement: 'resources') addElement: 'resource'.
	resourceNode setAttribute: 'xml:lang' value: 'en'.

	self sectionFields keysAndValuesDo: [:section :attributes | 
		((resourceNode addElement: section) addElement: 'label') text: section capitalized.
		attributes do: [:umlClassAttribute |  | attributeNode |
			attributeNode := resourceNode addElement: umlClassAttribute attributeName.
			(attributeNode addElement: 'label') text: umlClassAttribute attributeName capitalized.
			attributeNode addElement: 'hint'.
		].
	].


	

	!

appendXfBindingsTo: anIXMLDOMElement
	| xfBindNode sectionBindNode |

	anIXMLDOMElement addComment: 'Bindings'.

	xfBindNode := anIXMLDOMElement addElement: 'xf:bind'.
	xfBindNode setAttribute: 'id' value: 'fr-form-binds';
		setAttribute: 'ref' value: 'instance(''fr-form-instance'')'.

	self sectionFields keysAndValuesDo: [:section :attributes | 
		sectionBindNode := xfBindNode addElement: 'xf:bind'.
		sectionBindNode setAttribute: 'id' value: (section , '-bind');
			setAttribute: 'name' value: section;
			setAttribute: 'ref' value: section. 
		attributes do: [:umlClassAttribute | | attributeBind |
			attributeBind := sectionBindNode addElement: 'xf:bind'.
			attributeBind  
				setAttribute: 'id' value: (umlClassAttribute attributeName, '-bind');
				setAttribute: 'name' value: umlClassAttribute attributeName;
				setAttribute: 'ref' value: umlClassAttribute attributeName;
				setAttribute: 'xxf:whitespace' value: 'trim'.
		].
	].


	

	!

appendXfInstanceTo: anIXMLDOMElement
	| xfInstanceNode formNode |

	anIXMLDOMElement addComment: 'Main instance'.

	xfInstanceNode := anIXMLDOMElement addElement: 'xf:instance'.

	xfInstanceNode setAttribute: 'id' value: 'fr-form-instance';
		setAttribute: 'xxf:exclude-result-prefixes' value: '#all';
		setAttribute: 'xxf:index' value: 'id'.

	formNode := xfInstanceNode addElement: 'form'.

	self sectionFields keysAndValuesDo: [:section :attributes |  | sectionNode |

		sectionNode := formNode addElement: section.

		attributes do: [:umlClassAttribute | sectionNode addElement: umlClassAttribute attributeName].
	].

	

	!

appendXfModelTo: anIXMLDOMElement
	| xfModel |

	xfModel := anIXMLDOMElement addElement: 'xf:model'.

	xfModel setAttribute: 'id' value: 'fr-form-model';
		setAttribute: 'xxf:expose-xpath-types' value: 'true';
		setAttribute: 'xxf:analysis.calculate' value: 'true'.

	^xfModel!

appendXhBody
	| xhBodyNode frViewNode frBodyNode frSectionNode frGridNode |

	xhBodyNode := xhHtmlNode addElement: 'xh:body'.

	frViewNode := xhBodyNode addElement: 'fr:view'.

	frBodyNode := frViewNode addElement: 'fr:body'.

	frBodyNode 
		setAttribute: 'xmlns:xbl' value: 'http://www.w3.org/ns/xbl';
		setAttribute: 'xmlns:p' value: 'http://www.orbeon.com/oxf/pipeline';
		setAttribute: 'xmlns:oxf' value: 'http://www.orbeon.com/oxf/processors'.

	self sectionFields keysAndValuesDo: [:section :attributes | | x y |
 
		frSectionNode := frBodyNode addElement: 'fr:section'.
		frSectionNode setAttribute: 'id' value: section, '-section';
			setAttribute: 'bind' value: section ,'-bind'.

		(frSectionNode addElement: 'xf:label') setAttribute: 'ref' value: '$form-resources/', section,'/label'.

		frGridNode := frSectionNode addElement: 'fr:grid'.
		frGridNode setAttribute: 'id' value: section, '-1-grid'.

		attributes keysAndValuesDo: [:index :umlClassAttribute |  | frNode componentNode |
			y := (index <= self fieldsPerColumn) 
				ifTrue: [1] 
				ifFalse: [(((index rem: self fieldsPerColumn) = 1) or: [self fieldsPerColumn = 1])
						ifTrue: [y+1] 
						ifFalse: [y]].
			x := ((self fieldsPerColumn = 1) or: [(index rem: self fieldsPerColumn) = 1])
				ifTrue: [1]
				ifFalse: [x+(self maxWidth // self fieldsPerColumn)].

			frNode := frGridNode addElement: 'fr:c'.
			frNode
				setAttribute: 'y' value: y printString;
				setAttribute: 'w' value: (self maxWidth // self fieldsPerColumn) printString;
				setAttribute: 'x' value: x printString.
			componentNode := frNode addElement: 'xf:input'.
			componentNode
				setAttribute: 'id' value: (umlClassAttribute attributeName, '-control');
				setAttribute: 'bind' value: (umlClassAttribute attributeName, '-bind');
				setAttribute: 'class' value: (umlClassAttribute attributeName, 'fr-summary fr-search').
			(componentNode addElement: 'xf:label') setAttribute: 'ref' value: '$form-resources/',umlClassAttribute attributeName,'/label'.
			(componentNode addElement: 'xf:hint') setAttribute: 'ref' value: '$form-resources/',umlClassAttribute attributeName,'/hint'.
			(componentNode addElement: 'xf:alert') setAttribute: 'ref' value: '$fr-resources/detail/labels/alert'.
		].
	].!

appendXhHead
	| xhHeadNode xfModelNode |

	xhHeadNode := xhHtmlNode addElement: 'xh:head'.

	(xhHeadNode addElement: 'xh:title') text: self formTitle.

	xfModelNode := self appendXfModelTo: xhHeadNode.

		self appendXfInstanceTo: xfModelNode.

		self appendXfBindingsTo: xfModelNode.

		self appendMetadataTo: xfModelNode.

		self appendAttachmentsTo: xfModelNode.

		self appendResourcesTo: xfModelNode.!

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

	^configuration applicationName!

applicationName: aString

	^configuration applicationName: aString!

basicVariables

	^configuration basicVariables!

configuration
	^configuration!

configuration: anObject
	configuration := anObject!

fieldsPerColumn

	^configuration fieldsPerColumn!

fieldsPerColumn: aNumber

	^configuration fieldsPerColumn: aNumber!

formName

	^configuration formName!

formName: aString

	^configuration formName!

formTitle

	^'Form for UML Class ' , self umlClass name!

formTitleFor: anUMLClass

	^'Form for UML Class ' , anUMLClass name!

generateXMLDocument

	xmlDocument :=  IXMLDOMDocument new.

	xhHtmlNode := xmlDocument addElement: 'xh:html'.

	self appendXmlnsNamespaces.
	
	self appendXhHead.

	self appendXhBody.!

initialize

	super initialize.

	configuration := OrbeonFormGeneratorConfiguration new.!

isGemStoneForm

	^configuration isGemStoneForm!

isGemStoneForm: aBoolean

	^configuration isGemStoneForm: aBoolean!

maxWidth

	^12!

sectionFields

	^configuration sectionFields!

sectionName
	^sectionName!

sectionName: anObject
	sectionName := anObject!

umlClass

	^configuration umlClass!

umlClass: anUMLClass

	^configuration umlClass: anUMLClass!

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
         xmlns:fb="http://orbeon.org/oxf/xml/form-builder"'!

xmlString

	^xmlDocument xml! !
!OrbeonFormGenerator categoriesFor: #appendAttachmentsTo:!public!tag-head-xfModel! !
!OrbeonFormGenerator categoriesFor: #appendMetadataTo:!public!tag-head-xfModel! !
!OrbeonFormGenerator categoriesFor: #appendResourcesTo:!public!tag-head-xfModel! !
!OrbeonFormGenerator categoriesFor: #appendXfBindingsTo:!public!tag-head-xfModel! !
!OrbeonFormGenerator categoriesFor: #appendXfInstanceTo:!public!tag-head-xfModel! !
!OrbeonFormGenerator categoriesFor: #appendXfModelTo:!public!tag-head-xfModel! !
!OrbeonFormGenerator categoriesFor: #appendXhBody!public!tag-body! !
!OrbeonFormGenerator categoriesFor: #appendXhHead!public!tag-head-main!tag-head-xfModel! !
!OrbeonFormGenerator categoriesFor: #appendXmlnsNamespaces!public!tag-head-xfModel! !
!OrbeonFormGenerator categoriesFor: #applicationName!configuration!public! !
!OrbeonFormGenerator categoriesFor: #applicationName:!configuration!public! !
!OrbeonFormGenerator categoriesFor: #basicVariables!configuration!public! !
!OrbeonFormGenerator categoriesFor: #configuration!accessing!private! !
!OrbeonFormGenerator categoriesFor: #configuration:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #fieldsPerColumn!configuration!public! !
!OrbeonFormGenerator categoriesFor: #fieldsPerColumn:!configuration!public! !
!OrbeonFormGenerator categoriesFor: #formName!configuration!public! !
!OrbeonFormGenerator categoriesFor: #formName:!configuration!public! !
!OrbeonFormGenerator categoriesFor: #formTitle!public! !
!OrbeonFormGenerator categoriesFor: #formTitleFor:!public! !
!OrbeonFormGenerator categoriesFor: #generateXMLDocument!api!public! !
!OrbeonFormGenerator categoriesFor: #initialize!public! !
!OrbeonFormGenerator categoriesFor: #isGemStoneForm!configuration!public! !
!OrbeonFormGenerator categoriesFor: #isGemStoneForm:!configuration!public! !
!OrbeonFormGenerator categoriesFor: #maxWidth!public!xml generation! !
!OrbeonFormGenerator categoriesFor: #sectionFields!configuration!public! !
!OrbeonFormGenerator categoriesFor: #sectionName!accessing!private! !
!OrbeonFormGenerator categoriesFor: #sectionName:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #umlClass!configuration!public! !
!OrbeonFormGenerator categoriesFor: #umlClass:!configuration!public! !
!OrbeonFormGenerator categoriesFor: #xmlDocument!accessing!private! !
!OrbeonFormGenerator categoriesFor: #xmlDocument:!accessing!private! !
!OrbeonFormGenerator categoriesFor: #xmlnsNamespacesString!public! !
!OrbeonFormGenerator categoriesFor: #xmlString!public! !

!OrbeonFormGenerator class methodsFor!

new

	^super new initialize!

newOn: anUMLClass

	^super new initialize
		umlClass: anUMLClass;
		yourself! !
!OrbeonFormGenerator class categoriesFor: #new!public! !
!OrbeonFormGenerator class categoriesFor: #newOn:!public! !

