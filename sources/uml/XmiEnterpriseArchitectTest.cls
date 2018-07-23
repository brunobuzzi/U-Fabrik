"Filed out from Dolphin Smalltalk 7"!

XmiReaderTest subclass: #XmiEnterpriseArchitectTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
XmiEnterpriseArchitectTest guid: (GUID fromString: '{bd99e713-b8c0-48f5-9f07-9db2a983bac0}')!
XmiEnterpriseArchitectTest comment: ''!
!XmiEnterpriseArchitectTest categoriesForClass!Unclassified! !
!XmiEnterpriseArchitectTest methodsFor!

setUp

	super setUp.

	xmiReader := XmiEnterpriseArchitect fromString: self xmiUmlModelExample1.!

testLoadXmiFile

	xmiReader selectNodes: '/xmi:XMI'.

	self assert: true.! !
!XmiEnterpriseArchitectTest categoriesFor: #setUp!public! !
!XmiEnterpriseArchitectTest categoriesFor: #testLoadXmiFile!public! !

