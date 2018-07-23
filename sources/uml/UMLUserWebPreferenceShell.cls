"Filed out from Dolphin Smalltalk 7"!

UMLShell subclass: #UMLUserWebPreferenceShell
	instanceVariableNames: 'preferencesComposite templatesPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UMLUserWebPreferenceShell guid: (GUID fromString: '{e9019b34-f1a7-471c-94dd-2740dd86ddd5}')!
UMLUserWebPreferenceShell comment: ''!
!UMLUserWebPreferenceShell categoriesForClass!Unclassified! !
!UMLUserWebPreferenceShell methodsFor!

createComponents

	super createComponents.

	preferencesComposite := self add: UMLUserWebPreferenceComposite new name: 'preferencesComposite'.

	templatesPresenter := self add: ListPresenter new name: 'templatesPresenter'. !

createSchematicWiring

	super createSchematicWiring.

	templatesPresenter when: #selectionChanged send: #onTemplateChanged to: self!

model: aLookupTable
	| collection |

	collection := aLookupTable keys asOrderedCollection.

	super model: collection.

	templatesPresenter model: (ListModel on: collection).!

onTemplateChanged
	| newPreference |

	templatesPresenter hasSelection ifFalse: [^self].

	newPreference := WebUserPreference templateNamed: templatesPresenter selection ifAbsent: [^self].

	WebUserPreference default: newPreference.

	preferencesComposite model: newPreference.!

removeTemplate

	templatesPresenter hasSelection ifFalse: [^self].

	WebUserPreference removeTemplateNamed: templatesPresenter selection.

	self updateTemplates.!

saveTemplate
	| name |

	name := (Prompter prompt: 'Enter Template Name') ifNil: [^self] ifNotNil: [:value | value].

	WebUserPreference addTemplate: preferencesComposite model  copy as: name.

	self updateTemplates.!

updateTemplates

	self model: WebUserPreference templates.! !
!UMLUserWebPreferenceShell categoriesFor: #createComponents!public! !
!UMLUserWebPreferenceShell categoriesFor: #createSchematicWiring!public! !
!UMLUserWebPreferenceShell categoriesFor: #model:!public! !
!UMLUserWebPreferenceShell categoriesFor: #onTemplateChanged!public! !
!UMLUserWebPreferenceShell categoriesFor: #removeTemplate!public! !
!UMLUserWebPreferenceShell categoriesFor: #saveTemplate!public! !
!UMLUserWebPreferenceShell categoriesFor: #updateTemplates!public! !

!UMLUserWebPreferenceShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view2' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view2)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 26869761 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 328198 ##(Smalltalk.Point)  1171 611 39 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 0 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 592 0 721158 ##(Smalltalk.SystemColor)  31 0 7 0 0 0 592 0 234 256 98 2 410 8 ##(Smalltalk.ComboBox)  98 17 0 592 98 2 8 1412498946 1025 736 590662 2 ##(Smalltalk.ListModel)  202 208 98 0 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  482 8 4278190080 0 7 0 0 0 736 0 8 4294903341 459270 ##(Smalltalk.Message)  8 #displayString 98 0 864 401 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 35 27 530 451 47 736 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 17 0 0 0 13 0 0 0 242 0 0 0 36 0 0 0] 98 0 530 193 193 0 27 8 'templatesPresenter' 0 1026 202 208 98 1 1090 1120 98 2 530 1 573 530 1209 101 592 1186 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 30 1 0 0 92 2 0 0 80 1 0 0] 98 4 736 410 8 ##(Smalltalk.PushButton)  98 20 0 592 98 2 8 1140924416 1 1440 0 0 0 7 0 0 0 1440 0 8 4294903187 1180998 4 ##(Smalltalk.CommandDescription)  8 #removeTemplate 8 'Remove Template' 1 1 0 0 32 0 0 0 1026 202 208 98 3 1090 1120 98 2 530 521 7 530 191 81 1440 1090 8 #isEnabled: 98 1 32 1440 1090 8 #text: 98 1 8 'Remove Template' 1440 1186 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 1 0 0 3 0 0 0 99 1 0 0 43 0 0 0] 98 0 1248 0 29 410 1456 98 20 0 592 98 2 8 1140924416 1 1872 0 0 0 7 0 0 0 1872 0 8 4294903187 1538 8 #saveTemplate 8 'Save Template' 1 1 0 0 32 0 0 0 1026 202 208 98 3 1090 1120 98 2 530 751 7 530 191 81 1872 1090 1728 98 1 32 1872 1090 1776 98 1 8 'Save Template' 1872 1186 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 119 1 0 0 3 0 0 0 214 1 0 0 43 0 0 0] 98 0 1248 0 29 410 1456 98 20 0 592 98 2 8 1140924416 1 2240 0 0 0 7 0 0 0 2240 0 8 4294903187 1538 8 #exit 8 'Exit' 1 1 0 0 32 0 0 0 1026 202 208 98 3 1090 1120 98 2 530 985 7 530 191 81 2240 1090 1728 98 1 32 2240 1090 1776 98 1 8 'Exit' 2240 1186 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 236 1 0 0 3 0 0 0 75 2 0 0 43 0 0 0] 98 0 1248 0 29 1248 0 27 0 0 410 608 98 15 0 416 98 2 8 1140850688 131073 2608 0 674 31 0 7 0 0 0 2608 1180166 ##(Smalltalk.ProportionalLayout)  234 240 864 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 2608 98 2 8 1140850688 131073 2768 0 482 8 4278190080 0 7 0 0 0 2768 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.UMLUserWebPreferenceComposite)  8 #resource_Default_view 0 1026 202 208 98 1 1090 1120 98 2 530 1 1 530 1209 573 2768 1186 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 92 2 0 0 30 1 0 0] 864 1248 0 27 8 'preferencesPresenter' 0 1026 202 208 98 1 1090 1120 98 2 530 1 1 530 1209 573 2608 1186 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 92 2 0 0 30 1 0 0] 98 1 2768 1248 0 27 234 256 864 0 0 0 0 0 1 0 0 0 0 1 0 0 1026 202 208 98 3 1090 1120 98 2 530 2731 21 530 1241 751 416 1090 1776 98 1 8 'User Customizations' 416 1090 8 #updateMenuBar 864 416 1186 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 85 5 0 0 10 0 0 0 193 7 0 0 129 1 0 0] 98 2 2608 592 1248 0 27 )! !
!UMLUserWebPreferenceShell class categoriesFor: #resource_Default_view!public!resources-views! !

