"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #UFabrikManagerShell
	instanceVariableNames: 'folderToolsPresenter folderLoginPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UFabrikManagerShell guid: (GUID fromString: '{f77ab2b4-987a-4168-956a-eb22c6b878cc}')!
UFabrikManagerShell comment: ''!
!UFabrikManagerShell categoriesForClass!Unclassified! !
!UFabrikManagerShell methodsFor!

categoryBrowserIcon

	^SmalltalkSystemIcon 
		icon: UMLImplementationCategory icon
		description: 'UML Category Browser'
		openBlock: (MessageSend receiver: self selector: #openCategoryBrowser)!

createComponents

	super createComponents.

	folderToolsPresenter := self add: FolderPresenter new name: 'folderTools'.
	folderLoginPresenter := self add: FolderPresenter new name: 'folderLogin'.
!

createLoginIcons
	| icons |

	icons := OrderedCollection new.
	icons
		add: self webConfigurationBrowserIcon;
		add: self desktopLoginIcon;
		add: self webLoginIcon;
		add: self releaseWebStateIcon.

	folderLoginPresenter openBlock: [:toolPresenter :iconTool | iconTool openBlock value].
	folderLoginPresenter model: (TreeModel withRoots: icons).
!

createToolsIcons
	| icons |

	icons := OrderedCollection new.
	icons
		add: self umlIdeaSpaceIcon;
		add: self virtualMachineBrowserIcon;
		add: self umlModelBrowserIcon;
		add: self categoryBrowserIcon;
		add: self workspaceBrowserIcon;
		add: self traitBrowserIcon.

	folderToolsPresenter openBlock: [:toolPresenter :iconTool | iconTool openBlock value].
	folderToolsPresenter model: (TreeModel withRoots: icons).
!

defineAttributeTypeMapping

	UMLTypeMappingShell showModalOn: UMLClassAttribute typeMappingAsOrderedCollection!

desktopLoginIcon

	^SmalltalkSystemIcon 
		icon: (Icon fromFile: 'icons/desktoplogin.ico')
		description: 'Desktop login'
		openBlock: (MessageSend receiver: self selector: #startDesktopLogin)!

hasSelectedCategory
	^false!

hasSelectedClass
	^false!

hasSelectedModel
	^false!

importLicence
	| file |

	file := FileOpenDialog showModal ifNil: [^self].

	LicenciaSoftware fileInEncriptedLicenceFrom: file.

	File copy: file to: (SessionManager current imageBase, 'licenceDefault.uli').

	self setLicenceCaption.!

importStateMachineFromXMI
	| shell xmiReaderClass |

	xmiReaderClass := (DetalleDeOpciones
					listaCon: XmiReader subclasses asOrderedCollection
					para: 'UMLTools view'
					titulo: 'Select the UML Tool that genereted the XMI file')
						ifNil: [nil]
						ifNotNil: [:value | value last].

	shell := UMLStateMachineImportShell show.

	shell setXmiReaderClass: xmiReaderClass.!

isCategoryBrowser
	^false!

onCategoriaAdded
	^self!

onViewClosed

	super onViewClosed.

	self saveImage.!

onViewOpened
	super onViewOpened.

	"(Date today >= (Date newDay: 21 monthIndex: 5 year: 2009)) ifTrue: [view destroy. ^MessageBox notify: 'support@uml-almighty.com - Virtual Machine Expired !!' ]."
	"self iniciarSitioWeb."
	self createToolsIcons.
	self createLoginIcons.
	UMLVirtualMachine fileInVirtualMachineFrom: SessionManager current imageBase , 'lastVM.uvm'.
	"LicenciaSoftware setLicence: (LicenciaSoftware fileInEncriptedLicenceFrom: (SessionManager current imageBase, 'licenceDefault.uli'))."
"	LicenciaSoftware setLicence: LicenciaPermanteSoftware new.
	self setLicenceCaption.
	LicenciaSoftware current expiro 
		ifTrue: 
			[self viewLicence.
			MessageBox notify: 'Licence expired !!' caption: self applicationName.
			^self exit]"!

releaseWebStateIcon

	^SmalltalkSystemIcon 
		icon: (Icon fromFile: 'icons/releaseWebState.ico')
		description: 'Release Web State'
		openBlock: (MessageSend receiver: self selector: #releaseWebState)!

saveImage

	self defaultVirtualMachine fileOutVirtualMachineTo: (SessionManager current imageBase, 'lastVM.uvm')
!

setLicenceCaption

	LicenciaSoftware current esValida 
	ifFalse: [view caption: self applicationName, ' MSG - WARNING: INVALID LICENCE']
	ifTrue: [view caption: self applicationName, ' Manager for ', LicenciaSoftware current nombreEmpresa].!

switchFolderLayout
	| layout |

	layout := (view viewNamed: 'folderContainer' ifNone: [^nil]) layoutManager.
	layout isVertical: layout isVertical not.
	self topShell view 
		extent: (layout isVertical ifTrue: [self topShell view extent + 1] ifFalse: [self topShell view extent - 1]).!

traitBrowserIcon

	^SmalltalkSystemIcon 
		icon: UMLTrait icon
		description: 'Trait Browser'
		openBlock: (MessageSend receiver: self selector: #openTraitBrowser)!

umlIdeaSpaceIcon

	^SmalltalkSystemIcon 
		icon: UMLIdeaSpaceShell icon
		description: 'Open Idea Space'
		openBlock: (MessageSend receiver: self selector: #openUMLIdeaSpace)!

umlModelBrowserIcon

	^SmalltalkSystemIcon 
		icon: UMLModel icon
		description: 'UML Model Browser'
		openBlock: (MessageSend receiver: self selector: #openUMLBrowser)!

viewLicence

	LicenciaSoftwareDialog showModal!

virtualMachineBrowserIcon

	^SmalltalkSystemIcon 
		icon: UMLVirtualMachine icon
		description: 'Virtual Machine Browser'
		openBlock: (MessageSend receiver: self selector: #openVirtualMachineBrowser)!

webConfigurationBrowserIcon

	^SmalltalkSystemIcon 
		icon: (Icon fromFile: 'icons/webconfiguration.ico')
		description: 'Web Configuration'
		openBlock: (MessageSend receiver: self selector: #showWebConfiguration)!

webLoginIcon

	^SmalltalkSystemIcon 
		icon: (WebBrowserShell icon)
		description: 'Web login'
		openBlock: (MessageSend receiver: self selector: #startWebLogin)!

workspaceBrowserIcon

	^SmalltalkSystemIcon 
		icon: UMLParsedImplementation icon
		description: 'Create: UML Scripts'
		openBlock: (MessageSend receiver: self selector: #openUMLWorkspace)! !
!UFabrikManagerShell categoriesFor: #categoryBrowserIcon!icons!public! !
!UFabrikManagerShell categoriesFor: #createComponents!public! !
!UFabrikManagerShell categoriesFor: #createLoginIcons!icons!public! !
!UFabrikManagerShell categoriesFor: #createToolsIcons!icons!public! !
!UFabrikManagerShell categoriesFor: #defineAttributeTypeMapping!public! !
!UFabrikManagerShell categoriesFor: #desktopLoginIcon!icons!public! !
!UFabrikManagerShell categoriesFor: #hasSelectedCategory!public! !
!UFabrikManagerShell categoriesFor: #hasSelectedClass!public! !
!UFabrikManagerShell categoriesFor: #hasSelectedModel!public! !
!UFabrikManagerShell categoriesFor: #importLicence!licence!public! !
!UFabrikManagerShell categoriesFor: #importStateMachineFromXMI!public! !
!UFabrikManagerShell categoriesFor: #isCategoryBrowser!public! !
!UFabrikManagerShell categoriesFor: #onCategoriaAdded!public! !
!UFabrikManagerShell categoriesFor: #onViewClosed!binary filing!licence!public! !
!UFabrikManagerShell categoriesFor: #onViewOpened!binary filing!licence!public! !
!UFabrikManagerShell categoriesFor: #releaseWebStateIcon!icons!public! !
!UFabrikManagerShell categoriesFor: #saveImage!binary filing!licence!public! !
!UFabrikManagerShell categoriesFor: #setLicenceCaption!binary filing!licence!public! !
!UFabrikManagerShell categoriesFor: #switchFolderLayout!public! !
!UFabrikManagerShell categoriesFor: #traitBrowserIcon!icons!public! !
!UFabrikManagerShell categoriesFor: #umlIdeaSpaceIcon!icons!public! !
!UFabrikManagerShell categoriesFor: #umlModelBrowserIcon!icons!public! !
!UFabrikManagerShell categoriesFor: #viewLicence!licence!public! !
!UFabrikManagerShell categoriesFor: #virtualMachineBrowserIcon!icons!public! !
!UFabrikManagerShell categoriesFor: #webConfigurationBrowserIcon!icons!public! !
!UFabrikManagerShell categoriesFor: #webLoginIcon!icons!public! !
!UFabrikManagerShell categoriesFor: #workspaceBrowserIcon!icons!public! !

!UFabrikManagerShell class methodsFor!

defaultModel

	^UMLDevelopmentEnvironment default!

icon

	^UMLVirtualMachine icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ShellView) 34 27 nil nil 8 #(13565952 65536) 416 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 39 nil nil nil 416 852230 ##(Smalltalk.FramingLayout) 170 176 34 4 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 576 nil nil nil 7 nil nil nil 576 788230 ##(Smalltalk.BorderLayout) 1 1 nil nil 410 ##(Smalltalk.Toolbar) 34 25 nil 576 34 2 8 1409288972 131137 672 nil 466 8 4278190080 nil 519 nil 263174 ##(Smalltalk.Font) nil true 459014 ##(Smalltalk.LOGFONT) 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 328198 ##(Smalltalk.Point) 193 193 nil 672 466 752 8 1917391025 170 192 8 #() 170 192 34 2 24877 1115206 1 ##(Smalltalk.ToolbarIconButton) 672 1 1180998 4 ##(Smalltalk.CommandDescription) #switchFolderLayout 8 'Switch Folder Layout' 1 1 263494 3 ##(Smalltalk.Icon) nil true 1572870 ##(Smalltalk.ImageRelativeFileLocator) 8 'Splitter.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy) 8 'dolphindr7.dll' nil 24877 34 2 1049158 1 ##(Smalltalk.ToolbarSeparator) 672 1 992 170 176 34 2 657990 3 ##(Smalltalk.DIBSection) nil true nil nil nil nil 3 850 33 33 65 nil 1 nil 1 nil 850 33 33 850 45 45 nil 656198 1 ##(Smalltalk.FlowLayout) 1 1 1 983302 ##(Smalltalk.MessageSequence) 138 144 34 2 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 850 717 1 850 81 55 672 1442 #updateSizePosted 928 672 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 102 1 0 0 0 0 0 0 142 1 0 0 27 0 0 0] 8 #() 850 193 193 nil 27 410 ##(Smalltalk.Toolbar) 34 25 nil 576 34 2 8 1409288972 131137 1616 nil 466 8 4278190080 nil 519 nil 770 nil true 802 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 850 193 193 nil 1616 466 1696 8 1917391025 170 192 928 170 192 34 4 24851 978 1616 1 1010 #fileOutVirtualMachine 8 'File Out Virtual Machine' 1 1 1058 nil true 1104 8 'FileSave.ico' 1152 24851 24853 978 1616 1 1010 #fileInVirtualMachine 8 'File In Virtual Machine' 1 1 1058 nil true 1104 8 'FileOpen.ico' 1152 24853 34 2 1856 1936 170 176 34 4 1266 nil true nil nil nil nil 3 850 33 33 65 nil 3 1266 nil true nil nil nil nil 3 850 33 33 65 nil 1 nil 1 nil 850 33 33 850 45 45 nil 1346 1 1 1 1378 138 144 34 2 1442 #createAt:extent: 34 2 850 1 1 850 101 55 1616 1442 #updateSizePosted 928 1616 1538 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 50 0 0 0 27 0 0 0] 8 #() 1600 nil 27 410 ##(Smalltalk.ReferenceView) 34 14 nil 576 34 2 8 1140850688 131073 2352 nil 466 8 4278190080 nil 7 nil nil nil 2352 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.Toolbar) #resource_UML_Common nil 1378 138 144 34 1 1442 #createAt:extent: 34 2 850 101 1 850 617 55 2352 1538 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 50 0 0 0 0 0 0 0 102 1 0 0 27 0 0 0] 928 1600 nil 27 170 192 928 nil 1378 138 144 34 1 1442 #createAt:extent: 34 2 850 1 -3 850 797 55 576 1538 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 254 255 255 255 142 1 0 0 25 0 0 0] 34 3 1616 2352 672 1600 nil 27 1181766 2 ##(Smalltalk.FramingConstraints) 1180678 ##(Smalltalk.FramingCalculation) #fixedParentLeft 1 2834 #fixedParentRight 1 2834 #fixedParentTop -3 2880 51 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 2896 nil nil nil 7 nil nil nil 2896 1180166 ##(Smalltalk.ProportionalLayout) 170 176 34 2 410 ##(Smalltalk.ListView) 34 30 nil 2896 34 2 8 1140936780 1025 3024 590662 2 ##(Smalltalk.ListModel) 138 144 928 nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 196934 1 ##(Smalltalk.RGB) 23845879 nil 7 nil nil nil 3024 nil 8 1917445487 787814 3 ##(Smalltalk.BlockClosure) 0 nil 1180966 ##(Smalltalk.CompiledExpression) 2 1 106 8 'Dolphin List Presenter' 8 'BasicListAbstract' 8 'doIt' 8 '[:item | item description]' 8 #[30 105 226 0 106] #description 3232 7 257 nil ##(Smalltalk.IconicListAbstract) 1049926 1 ##(Smalltalk.IconImageManager) nil nil nil 850 65 65 nil nil 138 144 34 1 920646 5 ##(Smalltalk.ListViewColumn) 8 'Column 1' 711 #left 3218 0 nil 3250 2 1 3280 8 'doIt' 8 '[:item | item description]' 8 #[30 105 226 0 106] #description 3504 7 257 nil ##(Smalltalk.SortedCollection) 459270 ##(Smalltalk.Message) #yourself 8 #() nil 3024 3456 3 nil nil #largeIcons 928 nil 131169 nil 8 #(nil) 1378 138 144 34 2 1442 #createAt:extent: 34 2 850 1 1 850 471 339 3024 1442 #text: 34 1 8 'Column 1' 3024 1538 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 235 0 0 0 169 0 0 0] 8 #() 1600 nil 27 524806 ##(Smalltalk.Fraction) 7 5 false 170 192 34 4 410 ##(Smalltalk.ListView) 34 30 nil 2896 34 2 8 1140936780 1025 3920 3090 138 144 928 nil 3152 3170 23845879 nil 7 nil nil nil 3920 nil 8 1917445487 3218 0 nil 3250 2 1 3280 3328 3344 3360 #description 4048 7 257 nil ##(Smalltalk.IconicListAbstract) 3392 nil nil nil 850 65 65 nil nil 138 144 34 1 3458 8 'Column 1' 711 #left 3218 0 nil 3250 2 1 3280 3536 3552 3568 #description 4160 7 257 nil ##(Smalltalk.SortedCollection) 3586 #yourself 8 #() nil 3920 3456 3 nil nil #largeIcons 928 nil 131169 nil 8 #(nil) 1378 138 144 34 2 1442 #createAt:extent: 34 2 850 481 1 850 317 339 3920 1442 #text: 34 1 8 'Column 1' 3920 1538 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 0 0 0 0 142 1 0 0 169 0 0 0] 8 #() 1600 nil 27 8 'folderLogin' 3024 8 'folderTools' nil 1378 138 144 34 1 1442 #createAt:extent: 34 2 850 1 51 850 797 339 2896 1538 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 142 1 0 0 194 0 0 0] 34 3 3024 410 ##(Smalltalk.Splitter) 34 12 nil 2896 34 2 8 1140850688 1 4640 nil 466 8 4278190080 nil 519 nil nil nil 1510470 1 ##(Smalltalk.DraggableViewInteractor) 4640 nil 1 #left nil nil nil 850 1 1 850 9 9 nil 4768 nil 1378 138 144 34 1 1442 #createAt:extent: 34 2 850 471 1 850 11 339 4640 1538 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 235 0 0 0 0 0 0 0 240 0 0 0 169 0 0 0] 8 #() 1600 nil 27 3920 1600 nil 27 2802 2848 1 2864 1 2880 51 2834 #fixedParentBottom 1 170 192 34 2 2896 8 'folderContainer' nil 461638 4 ##(Smalltalk.MenuBar) nil true 34 4 265030 4 ##(Smalltalk.Menu) nil true 34 9 984134 2 ##(Smalltalk.CommandMenuItem) 1 1010 #importStateMachineFromXMI 8 'Import State Machine from XMI' 1 1 nil nil nil 983366 1 ##(Smalltalk.DividerMenuItem) 4097 5138 1 1010 #fileOutVirtualMachine 8 'File out Virtual Machine as Binary' 1 1 nil nil nil 5138 1 1010 #fileInVirtualMachine 8 'File in Virtual Machine from Binary' 1 1 nil nil nil 5202 4097 5138 1 1010 #fileOutVirtualMachineAsXml 8 'File out Virtual Machine code as XML' 1 1 nil nil nil 5138 1 1010 #fileInVirtualMachineFromXml 8 'File in Virtual Machine code from XML' 1 1 nil nil nil 5202 4097 5138 1 1010 #exit 8 'Exit' 1 1 nil nil nil 8 'File' nil 134217729 nil nil 24933 nil nil 5090 nil true 34 15 5138 1 1010 #openUMLIdeaSpace 8 'Idea Space' 1 1 1058 nil true 1104 8 'IdeaSpaceShell.ico' 1152 nil nil 5138 1 1010 #openUMLBrowser 8 'UML Model Browser' 1 1 1058 nil true 1104 8 'icons/umlmodel.ico' nil nil nil 5202 4097 5138 1 1010 #openCategoryBrowser 8 'Category Browser' 1 1 1058 nil true 1104 8 'category.ico' nil nil nil 5202 4097 5138 1 1010 #openTraitBrowser 8 'Trait Browser' 1 1 1058 nil true 1104 8 'icons/trait.ico' nil nil nil 5202 4097 5138 1 1010 #openUMLWorkspace 8 'UML Scripts' 1 1 1058 nil true 1104 8 'icons/implementation02.ico' nil nil nil 5202 4097 5138 1 1010 #openVirtualMachineBrowser 8 'Virtual Machine Browser' 1 1 1058 nil true 1104 8 'icons\Chrisbanks2-Cold-Fusion-Hd-Cpu.ico' nil nil nil 5202 4097 5138 1 1010 #showWebConfiguration 8 'Web Server Configuration' 1 1 1058 nil true 1104 8 'icons/webconfiguration.ico' nil nil nil 5138 1 1010 #startWebLogin 8 'Web login' 1 1 1058 nil true 1104 29 1146 8 'shell32.dll' nil nil nil 5202 4097 5138 1 1010 #startDesktopLogin 8 'Desktop login' 1 1 1058 nil true 1104 8 'TextEdit.ico' 1152 nil nil 8 'Tools' nil 134217729 nil nil 24953 nil nil 5090 nil true 34 1 5138 1 1010 #defineAttributeTypeMapping 8 'Define attribute type mapping' 1 1 nil nil nil 8 'Options' nil 134217729 nil nil 24957 nil nil 5090 nil true 34 6 5138 1 1010 #gotoUFabrikWebSite 8 'U-Fabrik Web Site' 1 1 nil nil nil 5138 1 1010 #goToUMLAlmightyNewsGroup 8 'News Group' 1 1 nil nil nil 5138 1 1010 #goToUMLAlmightyDocumentation 8 'Online Documents' 1 1 nil nil nil 5138 1 1010 #goToUMLAlmightySpanishVideos 8 'Online Videos Spanish' 1 1 nil nil nil 5138 1 1010 #goToUMLAlmightyEnglishVideos 8 'Online Videos English' 1 1 nil nil nil 5138 1 1010 #goToUMLAlmightyBlog 8 'Blog' 1 1 nil nil nil 8 'Support' nil 134217729 nil nil 24971 nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil nil 1 nil nil nil nil 1 nil nil 1378 138 144 34 3 1442 #createAt:extent: 34 2 850 2719 21 850 829 507 416 1442 #text: 34 1 8 'U-Fabrik Simulation Environment' 416 1442 #updateMenuBar 928 416 1538 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 237 6 0 0 7 1 0 0] 34 2 576 2896 1600 nil 27 )! !
!UFabrikManagerShell class categoriesFor: #defaultModel!public! !
!UFabrikManagerShell class categoriesFor: #icon!public! !
!UFabrikManagerShell class categoriesFor: #resource_Default_view!public!resources-views! !

