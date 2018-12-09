"Filed out from Dolphin Smalltalk 7"!

UMLShell subclass: #UMLToolShell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLToolShell guid: (GUID fromString: '{99f4d8dd-d91c-49c4-b9b6-9e703026196f}')!
UMLToolShell comment: ''!
!UMLToolShell categoriesForClass!Unclassified! !
!UMLToolShell methodsFor!

defineAttributeTypeMapping

	UMLTypeMappingShell showModalOn: UMLClassAttribute typeMappingAsOrderedCollection!

developmentEnvironment

	^UMLDevelopmentEnvironment default!

fileInVirtualMachine
	| fileStream pathFile |

	pathFile := (FileOpenDialog new)
				caption: 'Virtual Machine...';
				fileTypes: #(#('Virtual Machine (*.uvm)' '*.uvm'));
				showModal.
	pathFile ifNil: [^self].
	fileStream := FileStream read: pathFile text: false.
	UMLVirtualMachine setDefault: (UMLVirtualMachine binaryReadFrom: fileStream).!

fileInVirtualMachineFromXml
	| fileStream pathFile bootstrap |

	pathFile := (FileOpenDialog new)
				caption: 'Virtual Machine...';
				fileTypes: #(#('Virtual Machine (*.xml)' '*.xml'));
				showModal.
	pathFile ifNil: [^self].
	fileStream := FileStream read: pathFile text: true.

	bootstrap := UMLVirtualMachineBootstrap new.
	UMLVirtualMachine setDefault: (bootstrap createVirtualMachineFrom: fileStream contents).
	fileStream close.
	!

fileOutVirtualMachine
	| fileStream pathFile |

	pathFile := (FileSaveDialog new)
				caption: 'Virtual Machine...';
				fileTypes: #(#('Virtual Machine (*.uvm)' '*.uvm'));
				showModal.
	pathFile ifNil: [^self].
	fileStream := FileStream write: pathFile text: false.
	UMLVirtualMachine default binaryStoreOn: fileStream.!

fileOutVirtualMachineAsXml
	| fileStream pathFile |

	pathFile := (FileSaveDialog new)
				caption: 'File out Virtual Machine code...';
				fileTypes: #(#('Virtual Machine (*.xml)' '*.xml'));
				showModal.
	pathFile ifNil: [^self].
	fileStream := FileStream write: pathFile text: true.
	UMLVirtualMachine default fileOutAsXmlTo: fileStream.
	fileStream flush; close.!

importStateMachineFromXMI
	| shell xmiReaderClass |
	xmiReaderClass := (DetalleDeOpciones
				listaCon: XmiReader concreteClasses asOrderedCollection
				para: 'UMLTools view'
				titulo: 'Select the UML Tool that genereted the XMI file')
					ifNil: [nil]
					ifNotNil: [:value | value last].
	shell := UMLStateMachineImportShell show.
	shell setXmiReaderClass: xmiReaderClass!

isCustomizedInspector
	^false!

isIdeaSpace

	^false!

isMethodBrowser

	^false!

mainComposite

	^self!

onViewClosed

	super onViewClosed.

	self developmentEnvironment unregisterUMLTool: self mainComposite!

onViewOpened

	super onViewOpened.

	self developmentEnvironment registerUMLTool: self mainComposite!

releaseWebState

	(AIDASite named: self applicationName, ' Web Server') releaseApplicationState! !
!UMLToolShell categoriesFor: #defineAttributeTypeMapping!public! !
!UMLToolShell categoriesFor: #developmentEnvironment!public! !
!UMLToolShell categoriesFor: #fileInVirtualMachine!public! !
!UMLToolShell categoriesFor: #fileInVirtualMachineFromXml!public! !
!UMLToolShell categoriesFor: #fileOutVirtualMachine!public! !
!UMLToolShell categoriesFor: #fileOutVirtualMachineAsXml!public! !
!UMLToolShell categoriesFor: #importStateMachineFromXMI!public! !
!UMLToolShell categoriesFor: #isCustomizedInspector!public! !
!UMLToolShell categoriesFor: #isIdeaSpace!public! !
!UMLToolShell categoriesFor: #isMethodBrowser!public! !
!UMLToolShell categoriesFor: #mainComposite!public! !
!UMLToolShell categoriesFor: #onViewClosed!public! !
!UMLToolShell categoriesFor: #onViewOpened!public! !
!UMLToolShell categoriesFor: #releaseWebState!public! !

