"Filed out from Dolphin Smalltalk 7"!

MultipleSelectionListView subclass: #MutipleSelectionListTreeView
	instanceVariableNames: 'hasExplicitTreeModel treeModel selChangeCause expanded hiddenExpanded options indentSeparation getChildrenBlock hasChildrenBlock getParentBlock sortBlock doSortChildrenBlock dummy2 dummy1'
	classVariableNames: ''
	poolDictionaries: 'ListTreeConstants'
	classInstanceVariableNames: ''!
MutipleSelectionListTreeView guid: (GUID fromString: '{078e8e6b-d471-468a-a134-707751a385ee}')!
MutipleSelectionListTreeView comment: ''!
!MutipleSelectionListTreeView categoriesForClass!Unclassified! !
!MutipleSelectionListTreeView methodsFor!

additem: aChildObject toParent: aParentObject withSiblings: aCollection
	"private -- add aChildObject to our displayed list under aParentObject, and in the
	correct position w.r.t. the collection of sibling objects (which may not yet be displayed
	themselves)"

	| index |

	"try to find the correct position to insert it"
	index := self model identityIndexOf: aParentObject ifAbsent: [1 "must be a root object"].
	1 to: (aCollection identityIndexOf: aChildObject ifAbsent: [aCollection size + 1]) - 1 do:
		[:i || sib sibIndex |
		sib := aCollection at: i.
		sibIndex := self model identityIndexOf: sib ifAbsent: [0].
		index := index max: sibIndex].

	"add the object to the 'real' model"
	self model add: aChildObject afterIndex: index.

	"NB: this would be unecessary, but the superclasses handling of raw element insertion is too much of
	a minefield for me to mess with it.  See ListView>>addNonVirtualItems: for why I'd rather not try to override
	it to ensure that the state is set directly as a side-effect of adding the item"
	self setItem: aChildObject openState: ((self hasChildren: aChildObject) ifTrue: [#Closed] ifFalse: [#Leaf]).

	self presenter trigger: #nodeAdded: with: aChildObject.
!

allDisplayedItems
	"answer an OrderedCollection of all the items that are currently displayed.
	(i.e. they are either a root or their parent is expanded)"

	^ OrderedCollection withAll: self model.!

allExpandedItems
	"answer an OrderedCollection of all the items that are currently expanded"

	^ OrderedCollection withAll: expanded.!

allHiddenExpandedItems
	"answer an OrderedCollection of all the items that are currently hidden expanded"

	| all |

	all := OrderedCollection new.
	hiddenExpanded isNil ifFalse: [all addAll: hiddenExpanded].

	^ all.!

applyImageLists
	"private -- set the receiver's image lists from the image managers.
	Overridden to do the state Image list too"

	| images |

	super applyImageLists.

	"note that we don't use the state image list instvar; there's no need since the
	image list is always the same systemwide, and this avoids having to mess with
	STBing images"
	images := self hasButtons
			ifTrue: [self class stateImageManager imageListWithExtent: 16@16]
			ifFalse: [nil].
	self stateImageList: images.!

autoExtendSelection
	"private -- answer whether expanding the children of a selected node should
	also select them.  This is a private flag used to implement <shift> key selection"

	^ options allMask: AutoExtendSelectionMask.!

autoExtendSelection: aBool
	"private -- set whether expanding the children of a selected node should
	also select them.  This is a private flag used to implement <shift> key selection"

	options := options mask: AutoExtendSelectionMask set: aBool.!

beSorted: aSortBlock
	"implemented so that we can implement the protocol of our Presenters"

	self sortBlock: aSortBlock.
!

childrenOf: anObject
	"answer our TreeModel's idea of anObject's children"

	^ self
		inOrder: (treeModel childrenOf: anObject)
		parent: anObject.!

collapse
	"collapse the tree view to ensure that the immediate children of the current selection, if any, are not displayed"

	Cursor wait showWhile:
		[self selections do: [:each | self
							collapse: each;
							removeHiddenExpanded: each]].!

collapse: anObject
	"collapse the displayed hierarchy below anObject; triggering a selection
	change event if one of the children of the object was previously selected"

	| children selectedChildren |

	(expanded includes: anObject) ifFalse: [^ self].

	"if the current selection is among the children then change it to anObject.  (Note if
	the selection is one of the grandchildren, then the recursion will mean that the
	selection climbs the tree parent-by-parent).
	We also have to check to see if it's OK to change the selection which makes it
	remarkably ugly"
	children := self childrenOf: anObject.
	selectedChildren := self selections select: [:each | children identityIncludes: each].
	(selectedChildren isEmpty or: [self replaceAllSelections: selectedChildren by: anObject])
		ifFalse: [^ self].

	"maybe retain a record of which children were expanded"
	hiddenExpanded notNil
		ifTrue: [hiddenExpanded addAll: (children select: [:each | self isItemExpanded: each])].

	"as with #expand: we allow the tree model to say that an object has children even if
	the actual set thereof is zero-sized, hence we display a #Closed image even if there
	were no actual children to remove"
	expanded remove: anObject ifAbsent: [].
	self setItem: anObject openState: #Closed.
	children do: [:each | self onItem: each removedFromParent: anObject].

	self presenter trigger: #nodeCollapsed: with: anObject.!

collapseAll
	"collapse the entire tree below the current selection, or the entire tree if there is
	no selection"

	Cursor wait showWhile:
		[self selectionRoots do: [:each | self
							collapse: each;
							removeHiddenExpanded: each]].
!

collapseOrSelectParent
	"private -- if the current selection (if any) is expanded then collapse it, otherwise
	select its parent.  This is the implementation of the left-arrow-key shortcut"

	| sel |

	sel := self selections at: 1 ifAbsent: [^ self].
	(self isItemExpanded: sel)
		ifTrue:
			[self collapse: sel; removeHiddenExpanded: sel]
		ifFalse:
			[(self parentOf: sel) ifNotNil: [:it | self selections: (Array with: it)]].!

connectModel
	"connect the receiver to its model, wiring events, etc. Overridden so as also to
	connect to our internal tree model"

	super connectModel.

	treeModel
		when: #treeChanged: send: #onTreeChanged: to: self;
		when: #item:addedInParent: send: #onItem:addedInParent: to: self;
		when: #item:removedFromParent: send: #onItem:removedFromParent: to: self;
		when: #item:movedToParent: send: #onItem:movedToParent: to: self;
		when: #itemUpdated: send: #onItemUpdated: to: self.
!

defaultIndentSeparation
	"private -- answer the default pixel identation of child items"

	^ 0.!

depthOf: anObject
	"answer our TreeModel's idea of how many generations anObject is descended
	from a root"

	| depth it |

	"why recurse when we can iterate, eh?"
	depth := 0.
	it := anObject.
	[(it := self parentOf: it) notNil] whileTrue: [depth := depth + 1].

	^ depth.!

disableExpandAll
	"answer whether the abiliity to expand the whole tree with one keypress is enabled"

	^ options allMask: DisableExpandAllMask.!

disableExpandAll: aBool
	"set whether the abiliity to expand the whole tree with one keypress is enabled"

	options := options mask: DisableExpandAllMask set: aBool.
	self invalidate.!

discardHiddenExpanded
	"discard any record we may be keeping of which items were
	expanded when they were last displayed"

	hiddenExpanded isNil ifFalse: [hiddenExpanded := hiddenExpanded class new].!

disconnectFromModel
	"remove all event registrations lodged with the current model. Overridden so as also to
	connect to our tree model"

	super disconnectFromModel.

	treeModel notNil ifTrue: [treeModel removeEventsTriggeredFor: self].
!

displayedTreeDo: a1Block
	"traverse the displayed part of our tree in pre-order starting evaluating
	a1Block for each discovered node"

	self roots do: [:each | self displayedTreeOf: each do: a1Block].!

displayedTreeOf: aParent do: a1Block
	"traverse the displayed part of our tree in pre-order starting at aParent, evaluating
	a1Block for each discovered node"

	a1Block value: aParent.
	(self isItemExpanded: aParent) ifTrue:
		[(self childrenOf: aParent) do: [:each | self displayedTreeOf: each do: a1Block]].!

doSortChildrenBlock
	"answer the <monadicValuable> that, if it is not nil, will be evaluted with a parent
	node as its parameter in order to decide whether to use the #sortBlock when sorting
	the children.  This is primarily intended to allow for the case where a tree has 'synthetic'
	node that shouldn't be sorted since their layout was set by the UI designer.
	See also #doSortRoots"

	^ doSortChildrenBlock.
!

doSortChildrenBlock: a1Block
	"set the <monadicValuable> that, if it is not nil, will be evaluted with a parent
	node as its parameter in order to decide whether to use the #sortBlock when sorting
	the children.
	See also #doSortRoots:"

	doSortChildrenBlock = a1Block
		ifTrue: [doSortChildrenBlock := a1Block]
		ifFalse: [doSortChildrenBlock := a1Block. self updateDisplayOrder].


!

doSortRoots
	"answer whether #sortBlock, if any, will be used to sort the roots of the tree.
	See also #doSortChildrenBlock"

	^ options allMask: DoSortRootsMask.!

doSortRoots: aBool
	"set whether #sortBlock, if any, will be used to sort the roots of the tree.
	See also #doSortChildrenBlock:"

	aBool = self doSortRoots ifTrue: [^ self].

	options := options mask: DoSortRootsMask set: aBool.
	self updateDisplayOrder
!

ensureDisplayed: anObject
	"ensure that all parents of anObject are expanded.  Has no effect for root objects,
	or objects that are not children (recursively) of a root.
	Note that we use identity for comparison.
	Answers whether the object is actually displayed"

	^ (self parentOf: anObject)
		ifNil: [self roots identityIncludes: anObject]
		ifNotNil: [:parent | (self ensureDisplayed: parent) and: [self expand: parent. true]].!

expand
	"expand the tree view to ensure that the immediate children of the current selection, if any, are displayed"

	self selections do: [:each | self expand: each].
!

expand: anObject
	"expand the tree view to ensure that the immediate children of anObject are displayed"

	| children |

	(self hasChildren: anObject) ifFalse: [^ self].
	(self isItemExpanded: anObject) ifTrue: [^ self].

	children := self childrenOf: anObject.

	"Note that this may cause an object with no children to show an open flag, that's by design
	so that TreeModels that distinguish between having a zero-sized set of children and not having
	children will display properly"
	expanded add: anObject.
	self setItem: anObject openState: #Open.

	"add the children"
	#CUtodo. "we could improve the efficiency of this loop considerably"
	children do: [:each | self additem: each toParent: anObject withSiblings: children].

	self presenter trigger: #nodeExpanded: with: anObject.

	#CUtodo. "possibly this should go in #onItem:addedInParent: ?"
	(self autoExtendSelection and: [self selections identityIncludes: anObject])
		ifTrue: [self addSelection: children].

	"maybe use our record of which children were expanded"
	hiddenExpanded notNil ifTrue:
		[children := children select: [:each | hiddenExpanded includes: each].
		hiddenExpanded removeAll: children.
		children do: [:each | self expand: each]].!

expandAll
	"expand the entire tree below the current selection, or the entire tree if there is
	no selection"

	Cursor wait showWhile: [self selectionRoots do: [:each | self expandAll: each]].!

expandAll: anObject
	"expand the tree view to ensure that all the (recursive) children of anObject are displayed"

	self expand: anObject.
	(self childrenOf: anObject) do: [:each | self expandAll: each].
!

expandOrSelectFirstChild
	"private -- if the current selection (if any) is expanded then select its first child, otherwise
	expand it.  This is the implementation of the right-arrow-key shortcut"

	| sel |

	sel := self selections at: 1 ifAbsent: [^ self].
	(self isItemExpanded: sel)
		ifTrue:
			[| child |
			child := (self childrenOf: sel) at: 1 ifAbsent: [^ self].
			self selections: (Array with: child)]
		ifFalse:
			[self expand: sel].!

getChildrenBlock
	"answer the <monadicValuable> that we will use to find the children of
	an Object if we have not been configured with an explicit TreeModel"

	^ getChildrenBlock.
!

getChildrenBlock: a1Block
	"set the <monadicValuable> that we will use to find the children of
	an Object if we have not been configured with an explicit TreeModel"

	getChildrenBlock := a1Block.
	hasExplicitTreeModel ifFalse: [treeModel getChildrenBlock: a1Block].!

getParentBlock
	"answer the <monadicValuable> that we will use to determine the parent of
	an Object if we have not been configured with an explicit TreeModel"

	^ getParentBlock.!

getParentBlock: a1Block
	"set the <monadicValuable> that we will use to determine the parent of
	an Object if we have not been configured with an explicit TreeModel"

	getParentBlock := a1Block.
	hasExplicitTreeModel ifFalse: [treeModel getParentBlock: a1Block].
!

handleFromObject: anObject ifAbsent: exceptionHandler
	"private -- answer the 'handle' or index associated with anObject in the receiver.
	Overridden to extend the ListModel when necessary"

	^ self model identityIndexOf: anObject ifAbsent:
		[self ensureDisplayed: anObject.
		self model identityIndexOf: anObject ifAbsent: exceptionHandler].
			!

hasButtons
	"answer whether the receiver has expand/contract buttons"

	^ options allMask: HasButtonsMask.!

hasButtons: aBool
	"set whether the receiver has expand/contract buttons"

	options := options mask: HasButtonsMask set: aBool.
	self applyImageLists.
!

hasCheckBoxes
	"answer whether the receiver has check-boxes.
	Overridden because the check box stuff uses the same 'state' images as we need
	for our open/closed indicators.  Always answers false"

	^ false.!

hasCheckBoxes: aBool
	"set whether the receiver has check-boxes.
	Overridden because the check box stuff uses the same 'state' images as we need
	for our open/closed indicators.  Always ignored (for consistancy with TreeView)"!

hasChildren: anObject
	"answer our TreeModel's idea of whether anObject has children"

	^ treeModel hasChildren: anObject.!

hasChildrenBlock
	"answer the <monadicValuable> that we will use to determine whether
	an Object has children if we have not been configured with an explicit
	TreeModel"

	^ hasChildrenBlock.!

hasChildrenBlock: a1Block
	"set the <monadicValuable> that we will use to determine whether
	an Object has children if we have not been configured with an explicit
	TreeModel"

	hasChildrenBlock := a1Block.
	hasExplicitTreeModel ifFalse: [treeModel hasChildrenBlock: a1Block].!

hasHotTracking
	"answer whether the receiver has the hot-tracking style"

	"MSDN seem to imply that a TreeView's hot tracking is the same thing as a list view's
	track select.  But they ain't the same beast at all.
	This seems to be the nearest equivalent"
	^ self listViewStyleAllMask: LVS_EX_TWOCLICKACTIVATE.!

hasHotTracking: aBool
	"set whether the receiver has the hot-tracking style"

	"MSDN seem to imply that a TreeView's hot tracking is the same thing as a list view's
	track select.  But they ain't the same beast at all.
	This seems to be the nearest equivalent"
	self listViewStyleMask: LVS_EX_TWOCLICKACTIVATE set: aBool.!

hasLines
	"answer whether the receiver has lines connecting its nodes.
	Unfortunately we do not support lines, at least not yet"

	^ false.!

hasLines: aBool
	"set whether the receiver has lines connecting its nodes.
	Unfortunately we do not support lines, so this is ignored
	but retained for compatability with TreeView"
!

hasLinesAtRoot
	"answer whether the receiver has lines and buttons for it's root entries.
	Actually this only affects the buttons.  Note also that it will have no
	effect if we do not have buttons at all"

	^ options allMask: HasLinesAtRootMask.!

hasLinesAtRoot: aBoolean
	"set whether the receiver has lines and buttons for it's root entries.
	Actually this only affects the buttons.  Note also that it will have no
	effect if we do not have buttons at all"

	options := options mask: HasLinesAtRootMask set: aBoolean.
	self refreshContents.!

indentationFor: anObject
	"private -- answer the number of image widths to indent the row by.
	We use this to hack an approximation to a tree"

	| depth |

	depth := self depthOf: anObject.

	"adjust to take #indentSeparation into account"
	depth := depth * (1 + (indentSeparation / 16) rounded).

	"if we have buttons then Windows'll add indent for the (possibly blank) state icon too,
	so if we don't want #linesAtRoot (really #buttonsAtRoot) then reduce the depth by one
	to hide any buttons in the first column"
	(self hasButtons and: [self hasLinesAtRoot not]) ifTrue: [depth := depth - 1].

	^ depth.!

indentFromRow: anObject
	"private -- answer the number of image widths to indent the row by.
	We use this to hack an approximation to a tree"

	^ self indentationFor: anObject.!

indentSeparation
	"answer the pixel identation of child items from their parents excluding
	the width of the current set of icons being shown"

	^ indentSeparation.!

indentSeparation: indentation
	"set the pixel identation of child items from their parents excluding
	the width of the current set of icons being shown.
	Note that the actual indentation used will be rounded to the nearest multiple
	of the size of the open/close image.  Also the indentation is not applied in
	quite the same way as a real TreeView does it"

	indentSeparation := indentation.
	self invalidate.
!

initialize
	"Private - Initialise the instance on creation."

	super initialize.
	indentSeparation := self defaultIndentSeparation.
	self viewMode: #report.
	options := self class defaultOptions.
	self retainExpanded: true.
	expanded := IdentitySet new.
	selChangeCause := #unknown.	"pah!!"
!

inOrder: aCollection parent: anObject
	"private -- answer aCollection of children of anObject as ordered by our sort settings"

	"the test against true is in case the doSortChildrenBlock answers nil or self"
	^ (sortBlock isNil or: [doSortChildrenBlock notNil and: [(doSortChildrenBlock value: anObject) ~= true]])
		ifTrue: [aCollection]
		ifFalse: [(aCollection asSortedCollection: sortBlock) asOrderedCollection].!

inRootOrder: aCollection
	"private -- answer aCollection ordered by our sort settings for root objects"

	^ (sortBlock isNil or: [self doSortRoots not])
		ifTrue: [aCollection]
		ifFalse: [(aCollection asSortedCollection: sortBlock) asOrderedCollection].!

invalidateItem: anObject
	"private -- iinvalidate the rectangle of the item for anObject"

	| index |

	index := self model identityIndexOf: anObject ifAbsent: [^ self].
	self invalidateItemIndex: index.!

invalidateItemIndex: anInteger
	"private -- envalidate the item with the 1-based integer index"

	self invalidateRect: (self itemRect: anInteger textOnly: false).
!

invalidateSelectedItems
	"private -- if there is a selected item, then invalidate its rectangle"

	self selections do: [:each | self invalidateItem: each].!

isItemDisplayed: anObject
	"answer whether anObject is currently displayed (i.e. either it is a root or
	its parent has been expanded to show its children -- there is not implication
	that it is actually *visible*, at least without scrolling)"

	^ self model identityIncludes: anObject.!

isItemExpanded: anObject
	"answer whether anObject is currently expanded (this doens't imply that
	it has any children, just that the #expand: operation has been performed
	on it)"

	^ expanded includes: anObject.!

isItemHiddenExpanded: anObject
	"answer whether anObject is hidden expanded, that is that it's parent isn't
	displayed, but if/when it is, anObject will be expanded automatically"

	^ hiddenExpanded notNil and: [hiddenExpanded includes: anObject].!

isMonoExpandable
	"answer whether the receiver has the single-expand style.
	Supplied for consistancy with TreeView; always answers false"

	^ false.!

isMonoExpandable: aBool
	"set whether the receiver has the single-expand style.
	Supplied for consistancy with TreeView; currently ignored"!

isVirtual: aBoolean
	"overridden to request the state update requests"

	| mask |

	mask := self lvmGetCallbackMask.
	mask := mask mask: LVIS_STATEIMAGEMASK set: aBoolean.
	self lvmSetCallbackMask: mask.

	^ super isVirtual: aBoolean.!

listModel: aListModel
	"private -- set the ListModel for us to use.  This is invoked indirectly from #model: if the supplied
	model is a ListModel.  We generate a VirtualTreeModel and initialise its pluggable blocks
	from our *Block aspects to use as our TreeModel, and create an internal ListModel to use
	as our #model that will be changed as the display changes.
	Note that once we have initialised ourself from the list model, we take no further interest
	in it"

	| roots |

	expanded := expanded class new.
	hiddenExpanded notNil ifTrue: [hiddenExpanded := hiddenExpanded class new].
	hasExplicitTreeModel := false.

	"derive a TreeModel from the ListModel using our blocks"
	roots := OrderedCollection withAll: aListModel.
	treeModel := (self class defaultTreeModelClass withRoots: roots).
	getParentBlock notNil ifTrue: [treeModel getParentBlock: getParentBlock].
	getChildrenBlock notNil ifTrue: [treeModel getChildrenBlock: getChildrenBlock].
	hasChildrenBlock notNil ifTrue: [treeModel hasChildrenBlock: hasChildrenBlock].

	"create an internal ListModel to hold our display -- we don't use the one supplied
	since we cannot afford to notice if anyone mutates it"
	super setModel: (self class defaultListModelClass on: roots).
!

minimumIndent
	"just for consistancy with TreeView"

	^ 0.!

onDisplayDetailsRequired: lvitem
	"private -- Windows want the display details for the item identified by lvitem.
	Overriden to handle LVIF_STATE too"

	| object mask |

	object := self objectFromHandle: lvitem handle ifAbsent: [^nil].
	mask := lvitem mask.

	(lvitem iSubItem isZero and: [lvitem mask allMask: LVIF_STATE]) ifTrue: 
		[lvitem stateImageIndex: (self stateFromRow: object)].

	^ super onDisplayDetailsRequired: lvitem.!

onFullyCreated
	"our window window has been created. Ensure that it reflects the state we think
	it should have"

	super onFullyCreated.

	self isVirtual ifTrue: [self lvmSetCallbackMask: LVIS_STATEIMAGEMASK].!

onItem: aChildObject addedInParent: aParentObject
	"notification received when aChildObject has been added to the list of
	children of aParentObject.  We assume that aChildObject is not already
	present in the tree as a child of some other object"

	| siblings |

	"if the child is currently displayed then ignore it"
	(self isItemDisplayed: aChildObject) ifTrue: [^ self].

	"if the parent, if any, is not currently expanded then ignore it"
	(aParentObject notNil and: [self isItemExpanded: aParentObject]) ifFalse: [^ self].

	"insert it amongs its brothers and sisters"
	siblings := aParentObject isNil
			ifTrue: [self roots]
			ifFalse: [self childrenOf: aParentObject].
	self
		additem: aChildObject
		toParent: aParentObject
		withSiblings: siblings.
!

onItem: aChildObject movedToParent: aParentObject
	"notification received when aChildObject has been moved to the list of
	children of aParentObject"

	(self isItemDisplayed: aChildObject) ifTrue: [self updateDisplayOrder].!

onItem: aChildObject removedFromParent: aParentObject
	"notification received when aChildObject has been removed from the list of
	children of aParentObject"

	self
		collapse: aChildObject;
		removeFromDisplay: aChildObject.
!

onItemUpdated: anObject
	"notification received when anObject has been changed"

	self onItemUpdatedAtIndex: (self model identityIndexOf: anObject ifAbsent: [^ self]).
	self setItemState: anObject.
!

onKeyPressed: aKeyEvent
	"handler for key press events.
	We want to emulate:
		- the numeric pad's multiply key fully expands/collapses the current selection or the whole tree
		- left-arrow expands children or, if already expanded, selects first
		- right-arrow collapses children, or if not expanded, selects parent
		- numeric+ expands selection
		- numeric- collapses selection"

	| code |

	"God's Teeth, but this is gross!!"

	code := aKeyEvent code.
	(code == VK_RIGHT
		or: [code == VK_LEFT
			or: [(code == VK_MULTIPLY and: [self disableExpandAll not])
				or: [code == VK_ADD
					or: [code == VK_SUBTRACT]]]])
		ifFalse: [^ super onKeyPressed: aKeyEvent].

	"I *hate* this selection-changing-cause stuff!!"
	self
		withSelectionChangeCause: #keyboard
		autoExtendSelection: self wantExtendedSelection
		do:
			[(code == VK_RIGHT) ifTrue: [self expandOrSelectFirstChild].
			(code == VK_LEFT) ifTrue: [self collapseOrSelectParent].
			(code == VK_MULTIPLY and: [self disableExpandAll not]) ifTrue: [self toggleExpandAll].
			(code == VK_ADD) ifTrue: [self expand].
			(code == VK_SUBTRACT) ifTrue: [self collapse]].

	"Windows seems to be bad at asking for redisplay info after the selected item is
	expanded/collapsed, so we force it.  We could just use #invalidate, but that causes
	too much flicker"
	self invalidateSelectedItems.

	"answer 0 to suppress Windows' default handling"
	^ 0.!

onLeftButtonDoubleClicked: aMouseEvent
	"handle a mouse left-button event.  We need to implement opening
	items by double-clicking"

	| hit target |

	#CUtodo.	"what happens if mouse buttons are reversed ?"

	"if it's not over an item then we can just leave it to the superclass"
	hit := self basicItemFromPoint: aMouseEvent position.
	((target := self model at: (hit iItem + 1) ifAbsent: [nil]) notNil)
		ifFalse: [^ super onLeftButtonDoubleClicked: aMouseEvent].

	"toggle the indicated item's expanded state. This does not directly change the
	selection though it may change implicitly if the effect is to close an ancestor of
	the current selection.  Hence we need to bugger about with the selection cause
	stuff"
	self
		withSelectionChangeCause: #mouse
		autoExtendSelection: self wantExtendedSelection
		do: [self toggleExpanded: target].

	"Windows seems to be bad at refreshing the target item under these circumstances,
	so force it"
	self invalidateItem: target.

	"hackery"
	self removeHiddenExpanded: target.

	"in this case we want to pass it to the default handling so that any selection changes
	and the default 'action' processing will also be applied"
	^ super onLeftButtonDoubleClicked: aMouseEvent.!

onLeftButtonPressed: aMouseEvent
	"handle a mouse left-button event.  We need to implement opening
	items by clicking their status box"

	| hit target |

	#CUtodo.	"what happens if mouse buttons are reversed ?"

	self presenter trigger: #leftButtonPressed: with: aMouseEvent.

	"see if it's a click on a state icon, if not then let the default list view processing
	take over, note we send #onButtonPressed: not a super-send of #onLefButtonPressed:
	because we've already notified the presenter"
	hit := self basicItemFromPoint: aMouseEvent position.
	(hit isOnItemStateIcon and: [(target := self model at: (hit iItem + 1) ifAbsent: [nil]) notNil])
		ifFalse: [^ self onButtonPressed: aMouseEvent].

	"toggle the indicated item's expanded state. This does not directly change the
	selection though it may change implicitly if the effect is to close an ancestor of
	the current selection, or if shift is down.  Hence we need to bugger about with
	the selection cause stuff"
	self
		withSelectionChangeCause: #mouse
		autoExtendSelection: self wantExtendedSelection
		do: [self toggleExpanded: target].

	"hackery"
	self removeHiddenExpanded: target.

	"Windows seems to be bad at refreshing the target item under these circumstances,
	so force it"
	self invalidateItem: target.

	"answer 0 to suppress Window's default handling"
	^ 0.!

onTreeChanged: anObject
	"notification received when the tree at and below anObject has been changed"

	"it'd be nicer to try to preserve any open children that are still valid, but that's not
	how TreeView does it"

	anObject isNil
		ifTrue: [self resetTreeToRoots]
		ifFalse: [self collapse: anObject; onItemUpdated: anObject].!

parentOf: anObject
	"answer our TreeModel's idea of anObject's parent"

	^ treeModel parentOf: anObject.!

parentsOf: anObject includesAny: aCollection
	"private -- answer whether any of the (recursive) parents of anObject are in
	aCollection"

	| parent |

	parent := self parentOf: anObject.
	parent isNil ifTrue: [^ false].
	(aCollection identityIncludes: parent) ifTrue: [^ true].
	^ self parentsOf: parent includesAny: aCollection.!

refreshContents
	"our display needs to be refreshed.  Overridden to
	force state images back to Windows, and to throw away
	the expensive record of what used to be expanded but
	is no longer displayed"

	super refreshContents.
	self
		updateStates;
		discardHiddenExpanded.!

refreshNonVirtual
	"private -- overridden to refresh the 'state' too"

	super refreshNonVirtual.

	"NB: this should be unecessary, but the superclasses handling of raw element insertion is too much of
	a minefield for me to mess with it.  See ListView>>addNonVirtualItems: for why I'd rather not try to override
	it to set the state directly"
	self roots do: [:each | self setItemState: each].

!

removeFromDisplay: anObject
	"private -- ensure that anObject is not displayed"

	self model removeAtIndex: (self model identityIndexOf: anObject ifAbsent: [^ self]).

	self presenter trigger: #nodeRemoved: with: anObject.

!

removeHiddenExpanded: anObject
	"private -- ensure that anObject is not on our hidden expanded list"

	hiddenExpanded isNil ifFalse: [hiddenExpanded remove: anObject ifAbsent: []].

!

replaceAllSelections: aCollection by: anObject
	"private -- remove the items in a collection from our current selection and replace them
	all with anObject.  Checks to see if its OK with any listeners first, and answers false if not"

	| indexes sels |

	"see if its OK"
	indexes := aCollection collect: [:each | self model identityIndexOf: each ifAbsent: [^ false]].
	(self onSelChanging: indexes cause: selChangeCause) ifFalse: [^ false].

	"build a new selection list"
	sels := (OrderedCollection with: anObject)
			addAll: (self selections reject: [:each | aCollection identityIncludes: each]);
			yourself.

	"and swap it in"
	self selections: sels.

	^ true.!

resetTreeToRoots
	"private -- go back to our TreeModel and ensure that our tree displays
	all and only its current roots"

	expanded := expanded class new.
	self discardHiddenExpanded.
	self model list: self roots.!

resolutionScaledBy: scale
	"private -- I'mnot sure what this does, but it's copied from TreeView"

	indentSeparation := (indentSeparation * scale x) truncated.


!

retainExpanded
	"answer whether we retain a record of which items were expanded even
	when they are not displayed, this is the default even though it is expensive
	and irritating 'cos that's the way that TreeView does it"

	^ hiddenExpanded notNil.!

retainExpanded: aBool
	"set whether we retain a record of which items were expanded even
	when they are not displayed, this is the default"

	aBool = self retainExpanded ifTrue: [^ self].
	hiddenExpanded := aBool
					ifTrue: [WeakIdentitySet new]
					ifFalse: [nil].!

roots
	"answer our TreeModel's idea of its roots"

	^ self inRootOrder: treeModel roots.!

selectionRoots
	"private -- answer a collection of the current selection, or -- if there isn't one -- the current roots
	with all items removed that are children of other items in the collection"

	| list |

	list := self selections.
	list isEmpty ifTrue: [^ self roots].
	list size = 1ifTrue: [^ list].

	^ list reject: [:each | self parentsOf: each includesAny: list].
	

	!

setItem: anObject openState: aSymbol
	"private -- update the 'state' image for anObject"

	| objectIndex stateIndex anLvItem |

	objectIndex := self model identityIndexOf: anObject ifAbsent: [^ self].
	stateIndex := self stateImageIndex: aSymbol.

	anLvItem := (TVITEMW new)
			iItem: objectIndex - 1;
			stateImageIndex: stateIndex;		"a 1-based index in Windows !!"
			yourself.

	self lvmSetItem: objectIndex - 1 state: anLvItem.!

setItemState: anObject
	"private -- update the 'state' image for anObject"

	self
		setItem: anObject
		openState: (self stateFor: anObject).!

setModel: aListOrTreeModel
	"private -- called to set our model.  Since we play games with the model (the one we hold may
	not be the one supplied), we override to dispatch to the 'real' model setters"

	"this will actually (probably) end up calling super>>setModel: with a different model" 
	^ (aListOrTreeModel respondsTo: #roots)
		ifTrue: [self treeModel: aListOrTreeModel]
		ifFalse: [self listModel: aListOrTreeModel].!

sortBlock
	"answer the <diadicValuable> that we use to sort the roots, and the children of
	any parent.  May be nil.
	Note: currently ignored"

	^ sortBlock.!

sortBlock: a2Block
	"set the <diadicValuable> that we will use to sort the roots, and the children of
	any parent.  May be nil in which case the natural sort order as provided by our
	TreeModel is used"

	sortBlock = a2Block
		ifTrue: [sortBlock := a2Block]
		ifFalse: [sortBlock := a2Block. self updateDisplayOrder].
!

sortOnColumn: aListViewColumn
	"sort the receiver according to the sort block in aListViewColumn"

	| presenter |

	aListViewColumn isSortable ifFalse: [^ self].

	presenter := self presenter.

	"ugly hack: don't go back to vanilla presenters -- they don't understand how to sort trees"
	(presenter == self or: [presenter isKindOf: ListTreePresenter])
		ifFalse: [presenter := self].

	Cursor wait showWhile: [presenter beSorted: aListViewColumn rowSortBlock].!

stateFor: anObject
	"private -- answer the 'state' identifier for anObject"

	#CUtodo.  "also use #SmallOpen and #SmallClosed if we have no image manager and the primary column
			doesn't have its own images"

	^ (self isItemExpanded: anObject)
			ifTrue: [#Open]
			ifFalse: [(self hasChildren: anObject)
				ifTrue: [#Closed]
				ifFalse: [#Leaf]].!

stateFromRow: anObject
	"private -- answer the index of the state image that is appropriate for anObject"

	^ self stateImageIndex: (self stateFor: anObject).!

stateImageIndex: aSymbol
	"private -- answer the state image index corresponding to aSymbol"

	^ self class stateNames indexOf: aSymbol ifAbsent: [0].

!

stbSaveOn: anSTBOutFiler
	"save a binary representation of the receiver to anSTBOutFiler.
	Overriden not to save the contents of the hiddenExpanded collection too"

	| saved |

	saved := hiddenExpanded.
	self discardHiddenExpanded.	"don't set it to nil or the resurected version will never use hiddenExpanded"

	^ [super stbSaveOn: anSTBOutFiler]
		ensure: [hiddenExpanded := saved].!

toggleExpandAll
	"expand/collapse the entire tree below the current selection, or the entire tree if there is
	no selection.  Note that this may produce odd results if there is a multiple selection with
	some items expanded and others not"

	Cursor wait showWhile: [self selectionRoots do: [:each | self toggleExpandAll: each]].
!

toggleExpandAll: anObject
	"expand/collapse the entire tree below anObject"

	(self isItemExpanded: anObject)
		ifTrue: [self collapse: anObject]
		ifFalse: [self expandAll: anObject].!

toggleExpanded
	"expand/collapse the tree view under the current selection, if any"

	Cursor wait showWhile: [self selectionRoots do: [:each | self toggleExpanded: each]].
!

toggleExpanded: anObject
	"expand/collapse the tree view under anObject"

	(self isItemExpanded: anObject)
		ifTrue: [self collapse: anObject]
		ifFalse: [self expand: anObject].!

treeModel
	"answer our TreeModel.  If the receiver's model as originally supplied was a ListModel,
	then the TreeModel will be an internally generated VirtualTreeModel using our pluggable
	blocks from the #hasChildrenBlock: #childrenOfBlock: and #parentOfBlock: aspects"

	^ treeModel.!

treeModel: aTreeModel
	"private -- set the TreeModel for us to use.  This is invoked indirectly from #model: if the supplied
	model is a TreeModel.  We create an internal ListModel to use as our #model that will
	be changed as the display changes"

	| roots listModel |

	treeModel := aTreeModel.
	hasExplicitTreeModel := true.
	expanded := expanded class new.
	self discardHiddenExpanded.

	"make an internal ListModel to hold the actual display, initialising it with the roots of the
	tree model, and pass that to the parent as our 'real' model"
	roots := OrderedCollection withAll: treeModel roots.
	listModel := self class defaultListModelClass on: roots.
	super setModel: listModel.
!

updateDisplayOrder
	"private -- ensure that the 'real' list model is showing items in the same order as we expect"

	| newOrder joyDivision firstDiff lastDiff |

	"work out what order we are in"
	joyDivision := self allDisplayedItems.

	"work out what order we *should* be in"
	newOrder := OrderedCollection new: self model size.
	self displayedTreeDo: [:each | newOrder addLast: each].

	"the should be the same size, but in case not..."
	(newOrder size = joyDivision size) ifFalse:
		[self discardHiddenExpanded.
		expanded removeAll: (newOrder reject: [:each | expanded includes: each]).
		self model list: newOrder.
		^ self].

	"compare"
	firstDiff := (1 to: newOrder size) detect: [:i | (joyDivision at: i) ~~ (newOrder at: i)] ifNone: [^ self].
	lastDiff := (newOrder size to: 1 by: -1) detect: [:i | (joyDivision at: i) ~~ (newOrder at: i)].

	"and fixup"
	self model replaceFrom: firstDiff to: lastDiff with: newOrder startingAt: firstDiff.
!

updateMode
	"supplied for consistancy with TreeView>>updateMode.  Actually we always
	reply #dynamic (mainly because Windows keeps asking for the indentation even
	after it has been told it; otherwise we would be #dynamic or #static according
	as we are #isVirtual)"

	^ #dynamic.!

updateMode: aSymbol
	"supplied for consistancy with TreeView>>viewMode.  Actually we ignore this"!

updateStates
	"private -- update the 'state' images all objects"

	self model do: [:each | self setItemState: each].!

viewMode: aSymbol
	"sets the view mode of the reciver to aSymbol.
	Overridden to understant the TreeView modes #noIcons and #smallIcons"

	"this isn't quite right, since we don't take proper account of the various image blocks, but it'll do
	for its main purpose which is to make mutating TreeViews (in the VC) work better"
	^ (aSymbol == #noIcons or: [aSymbol = #smallIcons])
		ifTrue: [(aSymbol == #noIcons) ifTrue: [self getImageBlock: nil]. super viewMode: #report]
		ifFalse: [super viewMode: aSymbol].

!

wantExtendedSelection
	"private -- answer whether we should interpret the current user gesture as a request to
	extend the selection"

	"this is silly"
	^ (self isKindOf: MultipleSelectionListView) and: [Keyboard default isShiftDown].!

withSelectionChangeCause: aSymbol autoExtendSelection: aBool do: a0Block
	"private -- answer the result of evaluating a0Block in an enviroment where
	any selection changing events will be ascribed to aSymbol as their cause and
	where selection will be extended to expanded children as set by aBool"

	| oldCause oldAuto |

	oldCause := selChangeCause.
	oldAuto := self autoExtendSelection.
	selChangeCause := aSymbol.
	self autoExtendSelection: aBool.
	^ a0Block ensure:
		[selChangeCause := oldCause.
		self autoExtendSelection: oldAuto].!

withSelectionChangeCause: aSymbol do: a0Block
	"private -- answer the result of evaluating a0Block in an enviroment where
	any selection changing events will be ascribed to aSymbol as their cause"

	| oldCause |

	oldCause := selChangeCause.
	selChangeCause := aSymbol.
	^ a0Block ensure: [selChangeCause := oldCause].! !
!MutipleSelectionListTreeView categoriesFor: #additem:toParent:withSiblings:!public! !
!MutipleSelectionListTreeView categoriesFor: #allDisplayedItems!public! !
!MutipleSelectionListTreeView categoriesFor: #allExpandedItems!public! !
!MutipleSelectionListTreeView categoriesFor: #allHiddenExpandedItems!public! !
!MutipleSelectionListTreeView categoriesFor: #applyImageLists!public! !
!MutipleSelectionListTreeView categoriesFor: #autoExtendSelection!public! !
!MutipleSelectionListTreeView categoriesFor: #autoExtendSelection:!public! !
!MutipleSelectionListTreeView categoriesFor: #beSorted:!public! !
!MutipleSelectionListTreeView categoriesFor: #childrenOf:!public! !
!MutipleSelectionListTreeView categoriesFor: #collapse!public! !
!MutipleSelectionListTreeView categoriesFor: #collapse:!public! !
!MutipleSelectionListTreeView categoriesFor: #collapseAll!public! !
!MutipleSelectionListTreeView categoriesFor: #collapseOrSelectParent!public! !
!MutipleSelectionListTreeView categoriesFor: #connectModel!public! !
!MutipleSelectionListTreeView categoriesFor: #defaultIndentSeparation!public! !
!MutipleSelectionListTreeView categoriesFor: #depthOf:!public! !
!MutipleSelectionListTreeView categoriesFor: #disableExpandAll!public! !
!MutipleSelectionListTreeView categoriesFor: #disableExpandAll:!public! !
!MutipleSelectionListTreeView categoriesFor: #discardHiddenExpanded!public! !
!MutipleSelectionListTreeView categoriesFor: #disconnectFromModel!public! !
!MutipleSelectionListTreeView categoriesFor: #displayedTreeDo:!public! !
!MutipleSelectionListTreeView categoriesFor: #displayedTreeOf:do:!public! !
!MutipleSelectionListTreeView categoriesFor: #doSortChildrenBlock!public! !
!MutipleSelectionListTreeView categoriesFor: #doSortChildrenBlock:!public! !
!MutipleSelectionListTreeView categoriesFor: #doSortRoots!public! !
!MutipleSelectionListTreeView categoriesFor: #doSortRoots:!public! !
!MutipleSelectionListTreeView categoriesFor: #ensureDisplayed:!public! !
!MutipleSelectionListTreeView categoriesFor: #expand!public! !
!MutipleSelectionListTreeView categoriesFor: #expand:!public! !
!MutipleSelectionListTreeView categoriesFor: #expandAll!public! !
!MutipleSelectionListTreeView categoriesFor: #expandAll:!public! !
!MutipleSelectionListTreeView categoriesFor: #expandOrSelectFirstChild!public! !
!MutipleSelectionListTreeView categoriesFor: #getChildrenBlock!public! !
!MutipleSelectionListTreeView categoriesFor: #getChildrenBlock:!public! !
!MutipleSelectionListTreeView categoriesFor: #getParentBlock!public! !
!MutipleSelectionListTreeView categoriesFor: #getParentBlock:!public! !
!MutipleSelectionListTreeView categoriesFor: #handleFromObject:ifAbsent:!public! !
!MutipleSelectionListTreeView categoriesFor: #hasButtons!public! !
!MutipleSelectionListTreeView categoriesFor: #hasButtons:!public! !
!MutipleSelectionListTreeView categoriesFor: #hasCheckBoxes!public! !
!MutipleSelectionListTreeView categoriesFor: #hasCheckBoxes:!public! !
!MutipleSelectionListTreeView categoriesFor: #hasChildren:!public! !
!MutipleSelectionListTreeView categoriesFor: #hasChildrenBlock!public! !
!MutipleSelectionListTreeView categoriesFor: #hasChildrenBlock:!public! !
!MutipleSelectionListTreeView categoriesFor: #hasHotTracking!public! !
!MutipleSelectionListTreeView categoriesFor: #hasHotTracking:!public! !
!MutipleSelectionListTreeView categoriesFor: #hasLines!public! !
!MutipleSelectionListTreeView categoriesFor: #hasLines:!public! !
!MutipleSelectionListTreeView categoriesFor: #hasLinesAtRoot!public! !
!MutipleSelectionListTreeView categoriesFor: #hasLinesAtRoot:!public! !
!MutipleSelectionListTreeView categoriesFor: #indentationFor:!public! !
!MutipleSelectionListTreeView categoriesFor: #indentFromRow:!public! !
!MutipleSelectionListTreeView categoriesFor: #indentSeparation!public! !
!MutipleSelectionListTreeView categoriesFor: #indentSeparation:!public! !
!MutipleSelectionListTreeView categoriesFor: #initialize!public! !
!MutipleSelectionListTreeView categoriesFor: #inOrder:parent:!public! !
!MutipleSelectionListTreeView categoriesFor: #inRootOrder:!public! !
!MutipleSelectionListTreeView categoriesFor: #invalidateItem:!public! !
!MutipleSelectionListTreeView categoriesFor: #invalidateItemIndex:!public! !
!MutipleSelectionListTreeView categoriesFor: #invalidateSelectedItems!public! !
!MutipleSelectionListTreeView categoriesFor: #isItemDisplayed:!public! !
!MutipleSelectionListTreeView categoriesFor: #isItemExpanded:!public! !
!MutipleSelectionListTreeView categoriesFor: #isItemHiddenExpanded:!public! !
!MutipleSelectionListTreeView categoriesFor: #isMonoExpandable!public! !
!MutipleSelectionListTreeView categoriesFor: #isMonoExpandable:!public! !
!MutipleSelectionListTreeView categoriesFor: #isVirtual:!public! !
!MutipleSelectionListTreeView categoriesFor: #listModel:!public! !
!MutipleSelectionListTreeView categoriesFor: #minimumIndent!public! !
!MutipleSelectionListTreeView categoriesFor: #onDisplayDetailsRequired:!public! !
!MutipleSelectionListTreeView categoriesFor: #onFullyCreated!public! !
!MutipleSelectionListTreeView categoriesFor: #onItem:addedInParent:!public! !
!MutipleSelectionListTreeView categoriesFor: #onItem:movedToParent:!public! !
!MutipleSelectionListTreeView categoriesFor: #onItem:removedFromParent:!public! !
!MutipleSelectionListTreeView categoriesFor: #onItemUpdated:!public! !
!MutipleSelectionListTreeView categoriesFor: #onKeyPressed:!public! !
!MutipleSelectionListTreeView categoriesFor: #onLeftButtonDoubleClicked:!public! !
!MutipleSelectionListTreeView categoriesFor: #onLeftButtonPressed:!public! !
!MutipleSelectionListTreeView categoriesFor: #onTreeChanged:!public! !
!MutipleSelectionListTreeView categoriesFor: #parentOf:!public! !
!MutipleSelectionListTreeView categoriesFor: #parentsOf:includesAny:!public! !
!MutipleSelectionListTreeView categoriesFor: #refreshContents!public! !
!MutipleSelectionListTreeView categoriesFor: #refreshNonVirtual!public! !
!MutipleSelectionListTreeView categoriesFor: #removeFromDisplay:!public! !
!MutipleSelectionListTreeView categoriesFor: #removeHiddenExpanded:!public! !
!MutipleSelectionListTreeView categoriesFor: #replaceAllSelections:by:!public! !
!MutipleSelectionListTreeView categoriesFor: #resetTreeToRoots!public! !
!MutipleSelectionListTreeView categoriesFor: #resolutionScaledBy:!public! !
!MutipleSelectionListTreeView categoriesFor: #retainExpanded!public! !
!MutipleSelectionListTreeView categoriesFor: #retainExpanded:!public! !
!MutipleSelectionListTreeView categoriesFor: #roots!public! !
!MutipleSelectionListTreeView categoriesFor: #selectionRoots!public! !
!MutipleSelectionListTreeView categoriesFor: #setItem:openState:!public! !
!MutipleSelectionListTreeView categoriesFor: #setItemState:!public! !
!MutipleSelectionListTreeView categoriesFor: #setModel:!public! !
!MutipleSelectionListTreeView categoriesFor: #sortBlock!public! !
!MutipleSelectionListTreeView categoriesFor: #sortBlock:!public! !
!MutipleSelectionListTreeView categoriesFor: #sortOnColumn:!public! !
!MutipleSelectionListTreeView categoriesFor: #stateFor:!public! !
!MutipleSelectionListTreeView categoriesFor: #stateFromRow:!public! !
!MutipleSelectionListTreeView categoriesFor: #stateImageIndex:!public! !
!MutipleSelectionListTreeView categoriesFor: #stbSaveOn:!public! !
!MutipleSelectionListTreeView categoriesFor: #toggleExpandAll!public! !
!MutipleSelectionListTreeView categoriesFor: #toggleExpandAll:!public! !
!MutipleSelectionListTreeView categoriesFor: #toggleExpanded!public! !
!MutipleSelectionListTreeView categoriesFor: #toggleExpanded:!public! !
!MutipleSelectionListTreeView categoriesFor: #treeModel!public! !
!MutipleSelectionListTreeView categoriesFor: #treeModel:!public! !
!MutipleSelectionListTreeView categoriesFor: #updateDisplayOrder!public! !
!MutipleSelectionListTreeView categoriesFor: #updateMode!public! !
!MutipleSelectionListTreeView categoriesFor: #updateMode:!public! !
!MutipleSelectionListTreeView categoriesFor: #updateStates!public! !
!MutipleSelectionListTreeView categoriesFor: #viewMode:!public! !
!MutipleSelectionListTreeView categoriesFor: #wantExtendedSelection!public! !
!MutipleSelectionListTreeView categoriesFor: #withSelectionChangeCause:autoExtendSelection:do:!public! !
!MutipleSelectionListTreeView categoriesFor: #withSelectionChangeCause:do:!public! !

!MutipleSelectionListTreeView class methodsFor!

defaultListModelClass

	^ ListModel.!

defaultOptions
	"answer the bitmap of options that instances have by default"

	^ HasButtonsMask bitOr: DoSortRootsMask!

defaultTreeModelClass

	^ TreeModel.!

installViewResources
	"private -- install instances as named resources associated
	with various Presenter classes.

		self installViewResources.
	"

	ListTreePresenter addView: self asResource: 'Multi-selection view'.
	ListPresenter addView: self asResource: 'Multi-selection ListTree view'.
!

publishedEventsOfInstances
	"answer a Set of Symbols that describe the published events triggered
	by instances of the receiver.
	ListTreeViews generate a few extra events that would be useful coming
	off TreeViews too (as with most views, the events are actually triggered
	off our presenter)"

	^ super publishedEventsOfInstances
		add: #nodeAdded:;
		add: #nodeRemoved:;
		add: #nodeExpanded:;
		add: #nodeCollapsed:;
		yourself.!

stateImageManager
	"answer the shared ImageMaster that contains the image lists for the
	leaf/expanded/not-expanded images"

	^ ListTreeView stateImageManager.!

stateNames
	"answer an Array of Symbol names of states, these are in the same order
	as the corresponding images in the stateImageList"

	"#SmallOpen and #SmallClosed are not actually used yet"
	^ #(#Leaf #Open #Closed #SmallOpen #SmallClosed).! !
!MutipleSelectionListTreeView class categoriesFor: #defaultListModelClass!public! !
!MutipleSelectionListTreeView class categoriesFor: #defaultOptions!public! !
!MutipleSelectionListTreeView class categoriesFor: #defaultTreeModelClass!public! !
!MutipleSelectionListTreeView class categoriesFor: #installViewResources!public! !
!MutipleSelectionListTreeView class categoriesFor: #publishedEventsOfInstances!public! !
!MutipleSelectionListTreeView class categoriesFor: #stateImageManager!public! !
!MutipleSelectionListTreeView class categoriesFor: #stateNames!public! !

