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

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ShellView) 34 27 nil nil 8 #(13565952 65536) 416 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 39 nil nil nil 416 852230 ##(Smalltalk.FramingLayout) 170 176 34 4 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 576 nil nil nil 7 nil nil nil 576 1180166 ##(Smalltalk.ProportionalLayout) 170 176 34 2 410 ##(Smalltalk.ListView) 34 30 nil 576 34 2 8 1140936780 1025 704 590662 2 ##(Smalltalk.ListModel) 138 144 8 #() nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 196934 1 ##(Smalltalk.RGB) 23845879 nil 7 nil nil nil 704 nil 8 1917445487 787814 3 ##(Smalltalk.BlockClosure) 0 nil 1180966 ##(Smalltalk.CompiledExpression) 2 1 106 8 'Dolphin List Presenter' 8 'BasicListAbstract' 8 'doIt' 8 '[:item | item description]' 8 #[30 105 226 0 106] #description 928 7 257 nil ##(Smalltalk.IconicListAbstract) 1049926 1 ##(Smalltalk.IconImageManager) nil nil nil 328198 ##(Smalltalk.Point) 65 65 nil nil 138 144 34 1 920646 5 ##(Smalltalk.ListViewColumn) 8 'Column 1' 711 #left 914 0 nil 946 2 1 976 8 'doIt' 8 '[:item | item description]' 8 #[30 105 226 0 106] #description 1216 7 257 nil ##(Smalltalk.SortedCollection) 459270 ##(Smalltalk.Message) #yourself 8 #() nil 704 1168 3 nil nil #largeIcons 816 nil 131169 nil 8 #(nil) 983302 ##(Smalltalk.MessageSequence) 138 144 34 2 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 1106 1 1 1106 471 339 704 1426 #text: 34 1 8 'Column 1' 704 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 235 0 0 0 169 0 0 0] 8 #() 1106 193 193 nil 27 524806 ##(Smalltalk.Fraction) 7 5 false 170 192 34 4 410 ##(Smalltalk.ListView) 34 30 nil 576 34 2 8 1140936780 1025 1696 770 138 144 816 nil 848 866 23845879 nil 7 nil nil nil 1696 nil 8 1917445487 914 0 nil 946 2 1 976 1024 1040 1056 #description 1824 7 257 nil ##(Smalltalk.IconicListAbstract) 1088 nil nil nil 1106 65 65 nil nil 138 144 34 1 1170 8 'Column 1' 711 #left 914 0 nil 946 2 1 976 1248 1264 1280 #description 1936 7 257 nil ##(Smalltalk.SortedCollection) 1298 #yourself 8 #() nil 1696 1168 3 nil nil #largeIcons 816 nil 131169 nil 8 #(nil) 1362 138 144 34 2 1426 #createAt:extent: 34 2 1106 481 1 1106 317 339 1696 1426 #text: 34 1 8 'Column 1' 1696 1554 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 240 0 0 0 0 0 0 0 142 1 0 0 169 0 0 0] 8 #() 1616 nil 27 8 'folderLogin' 704 8 'folderTools' nil 1362 138 144 34 1 1426 #createAt:extent: 34 2 1106 1 51 1106 797 339 576 1554 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 142 1 0 0 194 0 0 0] 34 3 704 410 ##(Smalltalk.Splitter) 34 12 nil 576 34 2 8 1140850688 1 2416 nil 466 8 4278190080 nil 519 nil nil nil 1510470 1 ##(Smalltalk.DraggableViewInteractor) 2416 nil 1 #left nil nil nil 1106 1 1 1106 9 9 nil 2544 nil 1362 138 144 34 1 1426 #createAt:extent: 34 2 1106 471 1 1106 11 339 2416 1554 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 235 0 0 0 0 0 0 0 240 0 0 0 169 0 0 0] 8 #() 1616 nil 27 1696 1616 nil 27 1181766 2 ##(Smalltalk.FramingConstraints) 1180678 ##(Smalltalk.FramingCalculation) #fixedParentLeft 1 2770 #fixedParentRight 1 2770 #fixedParentTop 51 2770 #fixedParentBottom 1 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 2848 nil nil nil 7 nil nil nil 2848 788230 ##(Smalltalk.BorderLayout) 1 1 nil nil 410 ##(Smalltalk.Toolbar) 34 25 nil 2848 34 2 8 1409288972 131137 2944 nil 466 8 4278190080 nil 519 nil 263174 ##(Smalltalk.Font) nil true 459014 ##(Smalltalk.LOGFONT) 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1106 193 193 nil 2944 466 3024 8 1917391025 170 192 816 170 192 34 2 38537 1115206 1 ##(Smalltalk.ToolbarIconButton) 2944 1 1180998 4 ##(Smalltalk.CommandDescription) #switchFolderLayout 8 'Switch Folder Layout' 1 1 263494 3 ##(Smalltalk.Icon) nil true 1572870 ##(Smalltalk.ImageRelativeFileLocator) 8 'Splitter.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy) 8 'dolphindr7.dll' nil 38537 34 2 1049158 1 ##(Smalltalk.ToolbarSeparator) 2944 1 3232 170 176 34 2 657990 3 ##(Smalltalk.DIBSection) nil true nil nil nil nil 3 1106 33 33 65 nil 1 nil 1 nil 1106 33 33 1106 45 45 nil 656198 1 ##(Smalltalk.FlowLayout) 1 1 1 1362 138 144 34 2 1426 #createAt:extent: 34 2 1106 717 1 1106 81 55 2944 1426 #updateSizePosted 816 2944 1554 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 102 1 0 0 0 0 0 0 142 1 0 0 27 0 0 0] 8 #() 1616 nil 27 410 ##(Smalltalk.Toolbar) 34 25 nil 2848 34 2 8 1409288972 131137 3792 nil 466 8 4278190080 nil 519 nil 3042 nil true 3074 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1106 193 193 nil 3792 466 3872 8 1917391025 170 192 816 170 192 34 4 38511 3218 3792 1 3250 #fileOutVirtualMachine 8 'File Out Virtual Machine' 1 1 3298 nil true 3344 8 'FileSave.ico' 3392 38511 38513 3218 3792 1 3250 #fileInVirtualMachine 8 'File In Virtual Machine' 1 1 3298 nil true 3344 8 'FileOpen.ico' 3392 38513 34 2 4032 4112 170 176 34 4 3506 nil true nil nil nil nil 3 1106 33 33 65 nil 3 3506 nil true nil nil nil nil 3 1106 33 33 65 nil 1 nil 1 nil 1106 33 33 1106 45 45 nil 3586 1 1 1 1362 138 144 34 2 1426 #createAt:extent: 34 2 1106 1 1 1106 101 55 3792 1426 #updateSizePosted 816 3792 1554 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 50 0 0 0 27 0 0 0] 8 #() 1616 nil 27 410 ##(Smalltalk.ReferenceView) 34 14 nil 2848 34 2 8 1140850688 131073 4528 nil 466 8 4278190080 nil 7 nil nil nil 4528 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.Toolbar) #resource_UML_Common nil 1362 138 144 34 1 1426 #createAt:extent: 34 2 1106 101 1 1106 617 55 4528 1554 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 50 0 0 0 0 0 0 0 102 1 0 0 27 0 0 0] 816 1616 nil 27 170 192 816 nil 1362 138 144 34 1 1426 #createAt:extent: 34 2 1106 1 -3 1106 797 55 2848 1554 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 254 255 255 255 142 1 0 0 25 0 0 0] 34 3 3792 4528 2944 1616 nil 27 2738 2784 1 2800 1 2816 -3 2816 51 170 192 34 2 576 8 'folderContainer' nil 461638 4 ##(Smalltalk.MenuBar) nil true 34 4 265030 4 ##(Smalltalk.Menu) nil true 34 9 984134 2 ##(Smalltalk.CommandMenuItem) 1 3250 #importStateMachineFromXMI 8 'Import State Machine from XMI' 1 1 nil nil nil 983366 1 ##(Smalltalk.DividerMenuItem) 4097 5138 1 3250 #fileOutVirtualMachine 8 'File out Virtual Machine as Binary' 1 1 nil nil nil 5138 1 3250 #fileInVirtualMachine 8 'File in Virtual Machine from Binary' 1 1 nil nil nil 5202 4097 5138 1 3250 #fileOutVirtualMachineAsXml 8 'File out Virtual Machine code as XML' 1 1 nil nil nil 5138 1 3250 #fileInVirtualMachineFromXml 8 'File in Virtual Machine code from XML' 1 1 nil nil nil 5202 4097 5138 1 3250 #exit 8 'Exit' 1 1 nil nil nil 8 'File' nil 134217729 nil nil 38471 nil nil 5090 nil true 34 15 5138 1 3250 #openUMLIdeaSpace 8 'Idea Space' 1 1 3298 nil true 3344 8 'IdeaSpaceShell.ico' 3392 nil nil 5138 1 3250 #openUMLBrowser 8 'UML Model Browser' 1 1 3298 nil true 3344 8 'icons/umlmodel.ico' nil nil nil 5202 4097 5138 1 3250 #openCategoryBrowser 8 'Category Browser' 1 1 3298 nil true 3344 8 'category.ico' nil nil nil 5202 4097 5138 1 3250 #openTraitBrowser 8 'Trait Browser' 1 1 3298 nil true 3344 8 'icons/trait.ico' nil nil nil 5202 4097 5138 1 3250 #openUMLWorkspace 8 'UML Scripts' 1 1 3298 nil true 3344 8 'icons/implementation02.ico' nil nil nil 5202 4097 5138 1 3250 #openVirtualMachineBrowser 8 'Virtual Machine Browser' 1 1 3298 nil true 3344 8 'icons/vm01.ico' nil nil nil 5202 4097 5138 1 3250 #showWebConfiguration 8 'Web Server Configuration' 1 1 3298 nil true 3344 8 'icons/webconfiguration.ico' nil nil nil 5138 1 3250 #startWebLogin 8 'Web login' 1 1 3298 nil true 3344 29 3386 8 'shell32.dll' nil nil nil 5202 4097 5138 1 3250 #startDesktopLogin 8 'Desktop login' 1 1 3298 nil true 3344 8 'TextEdit.ico' 3392 nil nil 8 'Tools' nil 134217729 nil nil 38491 nil nil 5090 nil true 34 1 5138 1 3250 #defineAttributeTypeMapping 8 'Define attribute type mapping' 1 1 nil nil nil 8 'Options' nil 134217729 nil nil 38495 nil nil 5090 nil true 34 6 5138 1 3250 #gotoUFabrikWebSite 8 'U-Fabrik Web Site' 1 1 nil nil nil 5138 1 3250 #goToUMLAlmightyNewsGroup 8 'News Group' 1 1 nil nil nil 5138 1 3250 #goToUMLAlmightyDocumentation 8 'Online Documents' 1 1 nil nil nil 5138 1 3250 #goToUMLAlmightySpanishVideos 8 'Online Videos Spanish' 1 1 nil nil nil 5138 1 3250 #goToUMLAlmightyEnglishVideos 8 'Online Videos English' 1 1 nil nil nil 5138 1 3250 #goToUMLAlmightyBlog 8 'Blog' 1 1 nil nil nil 8 'Support' nil 134217729 nil nil 38509 nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil nil 1 nil nil nil nil 1 nil nil 1362 138 144 34 3 1426 #createAt:extent: 34 2 1106 2719 21 1106 829 507 416 1426 #text: 34 1 8 'U-Fabrik Simulation Environment' 416 1426 #updateMenuBar 816 416 1554 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 237 6 0 0 7 1 0 0] 34 2 2848 576 1616 nil 27 )! !
!UFabrikManagerShell class categoriesFor: #defaultModel!public! !
!UFabrikManagerShell class categoriesFor: #icon!public! !
!UFabrikManagerShell class categoriesFor: #resource_Default_view!public!resources-views! !

