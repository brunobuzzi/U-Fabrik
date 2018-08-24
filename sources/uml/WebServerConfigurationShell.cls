"Filed out from Dolphin Smalltalk 7"!

UMLToolShell subclass: #WebServerConfigurationShell
	instanceVariableNames: 'ipAddressPresenter portPresenter hostPresenter isServingPresenter sitePresenter stylesPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebServerConfigurationShell guid: (GUID fromString: '{375a07c8-f06d-42fe-8165-8c0e4f23f4cf}')!
WebServerConfigurationShell comment: ''!
!WebServerConfigurationShell categoriesForClass!Unclassified! !
!WebServerConfigurationShell methodsFor!

createComponents

	super createComponents.

	ipAddressPresenter := self add: TextPresenter new name: 'ip'.
	portPresenter := self add: NumberPresenter new name: 'port'.
	hostPresenter := self add: TextPresenter new name: 'host'.
	isServingPresenter := self add: BooleanPresenter new name: 'isServing'.
	sitePresenter := self add: TextPresenter new name: 'sitePresenter'.
	stylesPresenter := self add: ListPresenter new name: 'stylesPresenter'.!

createSchematicWiring

	super createSchematicWiring.

	stylesPresenter when: #selectionChanged send: #onStyleChanged to: self.!

hasSelectedClass
	^false!

isCategoryBrowser
	^false!

mainComposite

	^self!

model: anAIDASite

	super model: anAIDASite.

	ipAddressPresenter model: (anAIDASite aspectValue: #ip).
	portPresenter model: (anAIDASite aspectValue: #port).
	hostPresenter model: (anAIDASite aspectValue: #host).
	isServingPresenter value: (anAIDASite isServing).!

onStyleChanged

	stylesPresenter hasSelection ifFalse: [^self].

	model styleClass: stylesPresenter selection name asString.!

onViewOpened

	super onViewOpened.

	sitePresenter value: self model name.

	stylesPresenter model: (ListModel on: DefaultWebStyle subclasses).

	stylesPresenter selection: (Smalltalk at: self model styleClass) ifAbsent: [].

	!

releaseApplicationState

	model releaseApplicationState.!

restartAll

	SwazooServer singleton removeAllSites.
	SwazooServer initSingleton; initialize.!

startSite
	| progressDialog |

	model ip: ipAddressPresenter value.
	model port: portPresenter value.
	model stop.
	model start.

	progressDialog := ProgressDialog create: 'No cancel view'.
	progressDialog view caption: 'Starting ', self applicationName, ' Web Server...'.
	progressDialog operation: [:progress | 
		1 to: 100 do: [:i | Processor sleep: 30. progress value: i; text: i displayString, '%']. 'completed'].
	progressDialog showModal.

	isServingPresenter value: (model isServing).!

stopSite
	| progressDialog |

	model stop.

	progressDialog := ProgressDialog create: 'No cancel view'.
	progressDialog view caption: 'Stoping ', self applicationName,' Web Server...'.
	progressDialog operation: [:progress | 
		1 to: 100 do: [:i | Processor sleep: 30. progress value: i; text: i displayString, '%']. 'completed'].
	progressDialog showModal.

	isServingPresenter value: (model isServing).! !
!WebServerConfigurationShell categoriesFor: #createComponents!public! !
!WebServerConfigurationShell categoriesFor: #createSchematicWiring!public! !
!WebServerConfigurationShell categoriesFor: #hasSelectedClass!public! !
!WebServerConfigurationShell categoriesFor: #isCategoryBrowser!public! !
!WebServerConfigurationShell categoriesFor: #mainComposite!public! !
!WebServerConfigurationShell categoriesFor: #model:!public! !
!WebServerConfigurationShell categoriesFor: #onStyleChanged!public! !
!WebServerConfigurationShell categoriesFor: #onViewOpened!public! !
!WebServerConfigurationShell categoriesFor: #releaseApplicationState!public! !
!WebServerConfigurationShell categoriesFor: #restartAll!public! !
!WebServerConfigurationShell categoriesFor: #startSite!public! !
!WebServerConfigurationShell categoriesFor: #stopSite!public! !

!WebServerConfigurationShell class methodsFor!

defaultModel
	^(AIDASite named: self applicationName, ' Web Server') 
		ifNil: [self initializeUFabrikWebServer]
		ifNotNil: [:value | value]!

icon

	^Icon fromFile: 'icons/webconfiguration.ico'!

initializeUFabrikWebServer
	| server siteName site |
	SwazooServer initSingleton.
	server := SwazooServer singleton.
	server initialize.
	siteName := self applicationName, ' Web Server'.
	site := AIDASite newNamed: siteName.
	AIDASite default: siteName.
	site
		host: '*';
		ip: '*';
		port: 8888.
	site styleClass: 'UMLWebStyle'.
	^site!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ShellView) 34 27 nil nil 8 #(13238272 65536) 416 nil 721158 ##(Smalltalk.SystemColor) 31 nil 167 nil nil nil 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 ##(Smalltalk.ReferenceView) 34 14 nil 416 34 2 8 1140850688 131073 528 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 nil 7 nil nil nil 528 1180166 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.Toolbar) #resource_UML_Common nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 1 1 786 989 51 528 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 238 1 0 0 25 0 0 0] 8 #() 786 193 193 nil 27 nil nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 912 nil nil nil 7 nil nil nil 912 nil 170 192 34 12 410 ##(Smalltalk.CheckBox) 34 16 nil 912 34 2 8 1409363203 1 1008 721990 2 ##(Smalltalk.ValueHolder) nil nil 1114118 ##(Smalltalk.NeverSearchPolicy) false nil nil 7 nil nil nil 1008 nil 8 1905361292 852486 ##(Smalltalk.NullConverter) nil nil nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 221 285 786 225 43 1008 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 142 0 0 0 222 0 0 0 163 0 0 0] 8 #() 896 nil 27 8 'isServing' 410 ##(Smalltalk.TextEdit) 34 16 nil 912 34 2 8 1140916352 1025 1360 nil 594 8 4278190080 nil 7 nil nil nil 1360 nil 8 1905498795 1154 nil nil 1 674 138 144 34 1 738 #createAt:extent: 34 2 786 221 105 786 381 41 1360 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 52 0 0 0 44 1 0 0 72 0 0 0] 8 #() 896 nil 27 8 'ip' 410 ##(Smalltalk.TextEdit) 34 16 nil 912 34 2 8 1140916224 1025 1664 1074 nil false 1310726 ##(Smalltalk.EqualitySearchPolicy) nil 594 8 4278190080 nil 7 nil 263174 ##(Smalltalk.Font) nil true 459014 ##(Smalltalk.LOGFONT) 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 786 193 193 nil 1664 196934 1 ##(Smalltalk.RGB) 16809985 8 1905498795 1154 nil 8 '' 3 674 138 144 34 1 738 #createAt:extent: 34 2 786 221 25 786 381 47 1664 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 12 0 0 0 44 1 0 0 35 0 0 0] 8 #() 896 nil 27 8 'sitePresenter' 410 ##(Smalltalk.TextEdit) 34 16 nil 912 34 2 8 1140916352 1025 2160 nil 594 1440 nil 7 nil nil nil 2160 nil 8 1905498795 787206 ##(Smalltalk.NumberToText) nil 8 '' nil 1 674 138 144 34 1 738 #createAt:extent: 34 2 786 221 165 786 381 41 2160 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 82 0 0 0 44 1 0 0 102 0 0 0] 8 #() 896 nil 27 8 'port' 410 ##(Smalltalk.ComboBox) 34 17 nil 912 34 2 8 1412498946 1025 2480 590662 2 ##(Smalltalk.ListModel) 138 144 880 nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 594 8 4278190080 nil 7 nil nil nil 2480 nil 8 1905148904 459270 ##(Smalltalk.Message) #name 8 #() 880 401 674 138 144 34 1 738 #createAt:extent: 34 2 786 221 345 786 381 51 2480 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 172 0 0 0 44 1 0 0 197 0 0 0] 8 #() 896 nil 27 8 'stylesPresenter' 410 ##(Smalltalk.TextEdit) 34 16 nil 912 34 2 8 1140916352 1025 2896 nil 594 8 4278190080 nil 7 nil nil nil 2896 nil 8 1905498795 1154 nil nil 1 674 138 144 34 1 738 #createAt:extent: 34 2 786 221 225 786 381 41 2896 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 112 0 0 0 44 1 0 0 132 0 0 0] 8 #() 896 nil 27 8 'host' nil 674 138 144 34 1 738 #createAt:extent: 34 2 786 1 51 786 989 443 912 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 238 1 0 0 246 0 0 0] 34 16 1664 1360 2160 410 ##(Smalltalk.StaticText) 34 16 nil 912 34 2 8 1140850944 1 3360 nil nil nil 7 nil nil nil 3360 nil 8 1905274194 1154 nil nil nil 674 138 144 34 2 738 #createAt:extent: 34 2 786 31 105 786 161 41 3360 738 #text: 34 1 8 'IP Address' 3360 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 52 0 0 0 95 0 0 0 72 0 0 0] 8 #() 896 nil 27 410 ##(Smalltalk.StaticText) 34 16 nil 912 34 2 8 1140850944 1 3664 nil nil nil 7 nil nil nil 3664 nil 8 1905274194 1154 nil nil nil 674 138 144 34 2 738 #createAt:extent: 34 2 786 31 165 786 171 41 3664 738 #text: 34 1 8 'Port' 3664 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 82 0 0 0 100 0 0 0 102 0 0 0] 8 #() 896 nil 27 410 ##(Smalltalk.PushButton) 34 20 nil 912 34 2 8 1140924416 1 3968 nil nil nil 7 nil nil nil 3968 nil 8 1905361292 1180998 4 ##(Smalltalk.CommandDescription) #startSite 8 'Re/Start Site' 1 1 nil nil false nil nil nil 674 138 144 34 3 738 #createAt:extent: 34 2 786 621 21 786 191 61 3968 738 #isEnabled: 8 #(false) 3968 738 #text: 34 1 8 'Re/Start Site' 3968 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 54 1 0 0 10 0 0 0 149 1 0 0 40 0 0 0] 8 #() 896 nil 29 2896 410 ##(Smalltalk.StaticText) 34 16 nil 912 34 2 8 1140850944 1 4336 nil nil nil 7 nil nil nil 4336 nil 8 1905274194 1154 nil nil nil 674 138 144 34 2 738 #createAt:extent: 34 2 786 31 225 786 161 41 4336 738 #text: 34 1 8 'Host Name' 4336 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 112 0 0 0 95 0 0 0 132 0 0 0] 8 #() 896 nil 27 410 ##(Smalltalk.PushButton) 34 20 nil 912 34 2 8 1140924416 1 4640 nil nil nil 7 nil nil nil 4640 nil 8 1905361292 4050 #stopSite 8 'Stop Site' 1 1 nil nil false nil nil nil 674 138 144 34 3 738 #createAt:extent: 34 2 786 831 21 786 141 61 4640 738 #isEnabled: 8 #(false) 4640 738 #text: 34 1 8 'Stop Site' 4640 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 1 0 0 10 0 0 0 229 1 0 0 40 0 0 0] 8 #() 896 nil 29 410 ##(Smalltalk.StaticText) 34 16 nil 912 34 2 8 1140850944 1 4992 nil nil nil 7 nil nil nil 4992 nil 8 1905274194 1154 nil nil nil 674 138 144 34 2 738 #createAt:extent: 34 2 786 31 285 786 121 41 4992 738 #text: 34 1 8 'Is Serving' 4992 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 142 0 0 0 75 0 0 0 162 0 0 0] 8 #() 896 nil 27 1008 410 ##(Smalltalk.PushButton) 34 20 nil 912 34 2 8 1140924416 1 5296 nil nil nil 7 nil nil nil 5296 nil 8 1905361292 4050 #releaseApplicationState 8 'Release State' 1 1 nil nil false nil nil nil 674 138 144 34 3 738 #createAt:extent: 34 2 786 621 101 786 191 61 5296 738 #isEnabled: 8 #(false) 5296 738 #text: 34 1 8 'Release State' 5296 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 54 1 0 0 50 0 0 0 149 1 0 0 80 0 0 0] 8 #() 896 nil 29 410 ##(Smalltalk.PushButton) 34 20 nil 912 34 2 8 1140924416 1 5648 nil nil nil 7 nil nil nil 5648 nil 8 1905361292 4050 #setStylePreferences 8 'Style Preferences' 1 1 nil nil false nil nil nil 674 138 144 34 3 738 #createAt:extent: 34 2 786 631 327 786 341 71 5648 738 #isEnabled: 8 #(false) 5648 738 #text: 34 1 8 'Style Preferences' 5648 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 59 1 0 0 163 0 0 0 229 1 0 0 198 0 0 0] 8 #() 896 nil 29 410 ##(Smalltalk.StaticText) 34 16 nil 912 34 2 8 1140850944 1 6000 nil nil nil 7 nil nil nil 6000 nil 8 1905274194 1154 nil nil nil 674 138 144 34 2 738 #createAt:extent: 34 2 786 31 31 786 141 41 6000 738 #text: 34 1 8 'Site' 6000 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 15 0 0 0 85 0 0 0 35 0 0 0] 8 #() 896 nil 27 410 ##(Smalltalk.StaticText) 34 16 nil 912 34 2 8 1140850944 1 6304 nil nil nil 7 nil nil nil 6304 nil 8 1905274194 1154 nil nil nil 674 138 144 34 2 738 #createAt:extent: 34 2 786 31 365 786 131 41 6304 738 #text: 34 1 8 'Style Class' 6304 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 182 0 0 0 80 0 0 0 202 0 0 0] 8 #() 896 nil 27 2480 896 nil 27 170 192 880 nil nil nil nil nil 1 nil nil nil nil 1 nil nil 674 138 144 34 3 738 #createAt:extent: 34 2 786 2719 21 786 1021 571 416 738 #text: 34 1 8 'Web Server Configuration' 416 738 #updateMenuBar 880 416 834 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 5 0 0 10 0 0 0 77 7 0 0 39 1 0 0] 34 2 528 912 896 nil 27 )! !
!WebServerConfigurationShell class categoriesFor: #defaultModel!public! !
!WebServerConfigurationShell class categoriesFor: #icon!public! !
!WebServerConfigurationShell class categoriesFor: #initializeUFabrikWebServer!private! !
!WebServerConfigurationShell class categoriesFor: #resource_Default_view!public!resources-views! !

