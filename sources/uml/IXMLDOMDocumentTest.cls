"Filed out from Dolphin Smalltalk 7"!

XmiReaderTest subclass: #IXMLDOMDocumentTest
	instanceVariableNames: 'document'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
IXMLDOMDocumentTest guid: (GUID fromString: '{a9be32d4-a189-4e4f-89c7-07aa142b4873}')!
IXMLDOMDocumentTest comment: ''!
!IXMLDOMDocumentTest categoriesForClass!Unclassified! !
!IXMLDOMDocumentTest methodsFor!

testDom1

	document := IXMLDOMDocument new.

	document loadText: self xmiUmlModelExample1.

	document selectNodes: 'xmi:XMI'!

testDom2

	document := IXMLDOMDocument2 new.

	document loadText: self xmiUmlModelExample1.

	document setProperty_: 'SelectionLanguage' value: 'XPath'.
	document setProperty_: 'SelectionNamespaces' value: 'xmlns:xmi="http://schema.omg.org/spec/XMI/2.1"'.


	^(document selectNodes: 'xmi:XMI/xmi:Extension/elements/element') inspect!

testDom3

	document := IXMLDOMDocument3 new.

	document loadText: self xmiUmlModelExample1.

	document selectNodes: 'xmi:XMI'!

testYaxoParser

	document := XMLDOMParser parseDocumentFrom: (ReadStream on: self xmiUmlModelExample1).

	document firstTagNamed: #'xmi:XMI'.

	self assert: true! !
!IXMLDOMDocumentTest categoriesFor: #testDom1!public! !
!IXMLDOMDocumentTest categoriesFor: #testDom2!public! !
!IXMLDOMDocumentTest categoriesFor: #testDom3!public! !
!IXMLDOMDocumentTest categoriesFor: #testYaxoParser!public! !

