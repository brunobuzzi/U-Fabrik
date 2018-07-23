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

	^Icon fromFile: 'U-Fabrik/webconfiguration.ico'!

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

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 26476545 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 0 167 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 544 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 7 0 0 0 544 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.Toolbar)  8 #resource_UML_Common 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 866 979 51 544 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 233 1 0 0 25 0 0 0] 98 0 866 193 193 0 27 0 0 0 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 992 0 0 0 7 0 0 0 992 0 234 256 98 12 410 8 ##(Smalltalk.ComboBox)  98 17 0 992 98 2 8 1412498946 1025 1104 590662 2 ##(Smalltalk.ListModel)  202 208 960 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  626 8 4278190080 0 7 0 0 0 1104 0 8 4294903443 459270 ##(Smalltalk.Message)  8 #name 98 0 960 401 738 202 208 98 1 802 832 98 2 866 221 345 866 381 47 1104 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 172 0 0 0 44 1 0 0 195 0 0 0] 98 0 976 0 27 8 'stylesPresenter' 410 8 ##(Smalltalk.TextEdit)  98 16 0 992 98 2 8 1140916352 1025 1552 0 626 8 4278190080 0 7 0 0 0 1552 0 8 4294903461 852486 ##(Smalltalk.NullConverter)  0 0 1 738 202 208 98 3 802 832 98 2 866 221 225 866 381 41 1552 802 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 1552 802 8 #isTextModified: 98 1 32 1552 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 112 0 0 0 44 1 0 0 132 0 0 0] 98 0 976 0 27 8 'host' 410 8 ##(Smalltalk.CheckBox)  98 16 0 992 98 2 8 1409363203 1 2016 721990 2 ##(Smalltalk.ValueHolder)  0 0 1114118 ##(Smalltalk.NeverSearchPolicy)  32 0 0 7 0 0 0 2016 0 8 4294903411 1682 0 0 0 738 202 208 98 1 802 832 98 2 866 221 285 866 225 43 2016 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 142 0 0 0 222 0 0 0 163 0 0 0] 98 0 976 0 27 8 'isServing' 410 1568 98 16 0 992 98 2 8 1140916352 1025 2368 0 626 8 4278190080 0 7 0 0 0 2368 0 8 4294903461 787206 ##(Smalltalk.NumberToText)  0 8 '' 0 1 738 202 208 98 3 802 832 98 2 866 221 165 866 381 41 2368 802 1840 98 1 1874 3 1 3 2368 802 1920 98 1 32 2368 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 82 0 0 0 44 1 0 0 102 0 0 0] 98 0 976 0 27 8 'port' 410 1568 98 16 0 992 98 2 8 1140916352 1025 2784 0 626 2448 0 7 0 0 0 2784 0 8 4294903461 1682 0 0 1 738 202 208 98 3 802 832 98 2 866 221 105 866 381 41 2784 802 1840 98 1 1874 3 1 3 2784 802 1920 98 1 32 2784 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 52 0 0 0 44 1 0 0 72 0 0 0] 98 0 976 0 27 8 'ip' 410 1568 98 16 0 992 98 2 8 1140916224 1025 3152 2098 0 32 1310726 ##(Smalltalk.EqualitySearchPolicy)  0 626 8 4278190080 0 7 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 866 193 193 0 3152 196934 1 ##(Smalltalk.RGB)  16809985 8 4294903461 1682 0 8 '' 3 738 202 208 98 3 802 832 98 2 866 221 25 866 381 47 3152 802 1840 98 1 1874 3 1 3 3152 802 1920 98 1 32 3152 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 12 0 0 0 44 1 0 0 35 0 0 0] 98 0 976 0 27 8 'sitePresenter' 0 738 202 208 98 1 802 832 98 2 866 1 51 866 979 445 992 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 233 1 0 0 247 0 0 0] 98 16 3152 2784 2368 410 8 ##(Smalltalk.StaticText)  98 16 0 992 98 2 8 1140850944 1 3888 0 0 0 7 0 0 0 3888 0 8 4294903427 1682 0 0 0 738 202 208 98 2 802 832 98 2 866 31 105 866 161 41 3888 802 8 #text: 98 1 8 'IP Address' 3888 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 52 0 0 0 95 0 0 0 72 0 0 0] 98 0 976 0 27 410 3904 98 16 0 992 98 2 8 1140850944 1 4224 0 0 0 7 0 0 0 4224 0 8 4294903427 1682 0 0 0 738 202 208 98 2 802 832 98 2 866 31 165 866 171 41 4224 802 4128 98 1 8 'Port' 4224 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 82 0 0 0 100 0 0 0 102 0 0 0] 98 0 976 0 27 410 8 ##(Smalltalk.PushButton)  98 20 0 992 98 2 8 1140924416 1 4528 0 0 0 7 0 0 0 4528 0 8 4294903411 1180998 4 ##(Smalltalk.CommandDescription)  8 #startSite 8 'Re/Start Site' 1 1 0 0 32 0 0 0 738 202 208 98 3 802 832 98 2 866 631 25 866 151 61 4528 802 8 #isEnabled: 98 1 32 4528 802 4128 98 1 8 'Re/Start Site' 4528 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 59 1 0 0 12 0 0 0 134 1 0 0 42 0 0 0] 98 0 976 0 29 1552 410 3904 98 16 0 992 98 2 8 1140850944 1 4944 0 0 0 7 0 0 0 4944 0 8 4294903427 1682 0 0 0 738 202 208 98 2 802 832 98 2 866 31 225 866 161 41 4944 802 4128 98 1 8 'Host Name' 4944 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 112 0 0 0 95 0 0 0 132 0 0 0] 98 0 976 0 27 410 4544 98 20 0 992 98 2 8 1140924416 1 5248 0 0 0 7 0 0 0 5248 0 8 4294903411 4626 8 #stopSite 8 'Stop Site' 1 1 0 0 32 0 0 0 738 202 208 98 3 802 832 98 2 866 799 25 866 141 61 5248 802 4816 98 1 32 5248 802 4128 98 1 8 'Stop Site' 5248 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 143 1 0 0 12 0 0 0 213 1 0 0 42 0 0 0] 98 0 976 0 29 410 3904 98 16 0 992 98 2 8 1140850944 1 5616 0 0 0 7 0 0 0 5616 0 8 4294903427 1682 0 0 0 738 202 208 98 2 802 832 98 2 866 31 285 866 121 41 5616 802 4128 98 1 8 'Is Serving' 5616 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 142 0 0 0 75 0 0 0 162 0 0 0] 98 0 976 0 27 2016 410 4544 98 20 0 992 98 2 8 1140924416 1 5920 0 0 0 7 0 0 0 5920 0 8 4294903411 4626 8 #releaseApplicationState 8 'Release State' 1 1 0 0 32 0 0 0 738 202 208 98 3 802 832 98 2 866 631 95 866 151 71 5920 802 4816 98 1 32 5920 802 4128 98 1 8 'Release State' 5920 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 59 1 0 0 47 0 0 0 134 1 0 0 82 0 0 0] 98 0 976 0 29 410 4544 98 20 0 992 98 2 8 1140924416 1 6288 0 0 0 7 0 0 0 6288 0 8 4294903411 4626 8 #setStylePreferences 8 'Style Preferences' 1 1 0 0 32 0 0 0 738 202 208 98 3 802 832 98 2 866 631 327 866 341 71 6288 802 4816 98 1 32 6288 802 4128 98 1 8 'Style Preferences' 6288 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 59 1 0 0 163 0 0 0 229 1 0 0 198 0 0 0] 98 0 976 0 29 410 3904 98 16 0 992 98 2 8 1140850944 1 6656 0 0 0 7 0 0 0 6656 0 8 4294903427 1682 0 0 0 738 202 208 98 2 802 832 98 2 866 31 31 866 141 41 6656 802 4128 98 1 8 'Site' 6656 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 15 0 0 0 85 0 0 0 35 0 0 0] 98 0 976 0 27 410 3904 98 16 0 992 98 2 8 1140850944 1 6960 0 0 0 7 0 0 0 6960 0 8 4294903427 1682 0 0 0 738 202 208 98 2 802 832 98 2 866 31 365 866 131 41 6960 802 4128 98 1 8 'Style Class' 6960 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 182 0 0 0 80 0 0 0 202 0 0 0] 98 0 976 0 27 1104 976 0 27 234 256 960 0 0 0 0 0 1 0 0 0 0 1 0 0 738 202 208 98 3 802 832 98 2 866 3199 21 866 991 551 416 802 4128 98 1 8 'Web Server Configuration' 416 802 8 #updateMenuBar 960 416 914 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 46 8 0 0 29 1 0 0] 98 2 544 992 976 0 27 )! !
!WebServerConfigurationShell class categoriesFor: #defaultModel!public! !
!WebServerConfigurationShell class categoriesFor: #icon!public! !
!WebServerConfigurationShell class categoriesFor: #initializeUFabrikWebServer!private! !
!WebServerConfigurationShell class categoriesFor: #resource_Default_view!public!resources-views! !

