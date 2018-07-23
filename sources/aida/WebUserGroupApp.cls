"Filed out from Dolphin Smalltalk 7"!

WebApplication subclass: #WebUserGroupApp
	instanceVariableNames: 'usersInGroup'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebUserGroupApp guid: (GUID fromString: '{897aaea0-d616-42b4-a208-5524975600c0}')!
WebUserGroupApp comment: ''!
!WebUserGroupApp categoriesForClass!Unclassified! !
!WebUserGroupApp methodsFor!

adminElement
	| e |
	e := WebElement new.
	e addLinkTo: self observee text: ' Select users ' view: #selectUsers;
		add: ((WebLink text: ' Access rights ' linkTo: self site securityManager)
			view: #aclObjects;
			parameter: 'who' value: self observee uuid).
	^e!

hierarchyLinksElement
	| e |
	e := WebElement new.
	e addText: self site name, ' / '.
	e addLinkTo: self site securityManager text: 'Security'.
	e addText: ' / '.
	e addLinkTo: self site securityManager text: 'Groups' view: #groups.
	e addText: ' / '.
	e addLinkTo: self observee text: '<b>', self observee name, '</b>'.
	^e!

userSelectionElement
	^ (WebGrid new width: self style pageContentWidth)
		columnNames: #(nil nil 'Username' 'Name');
		columnAspects: #(nil nil username nameSurname);
		columnLinkViews: #(nil nil main main);
		columnFilters: #(nil nil true true);
		column: 2 addBlock: [:usr | usr isLocked not
			ifTrue: [(WebCheckBox newForObject: usr from: self observee users) onChangePost]
			ifFalse: [WebElement new] ];  "no checkbox for p+locked users like Admin, Guest"
		collection: (self site securityManager allUsers 
			asSortedCollection: [:u1 :u2 | u1 username < u2 username]);
		setNumbering;
		rowsOnPage: 20;
		yourself!

usersGridElement
	^ (WebGrid new width: self style pageContentWidth)
		columnNames: #(nil 'Username' 'Name');
		columnAspects: #(nil username nameSurname);
		columnLinkViews: #(nil main main);
		collection: (self observee allUsers asSortedCollection: [:u1 :u2 | u1 username < u2 username]);
		columnFilters: #(nil true true);
		setNumbering;
		rowsOnPage: 20;
		yourself!

usersInGroup
	^ usersInGroup!

usersInGroup: anObject
	usersInGroup := anObject!

viewMain
	| e  |
	self title: 'Group ', self observee name.
	e := WebElement new.
	e add: self hierarchyLinksElement; addBreak.
	e addTextH1: self title; addBreak.
	e add: self adminElement. e addBreak.
	e add: self usersGridElement.
	self style pageFrameWith: e title: self title!

viewSelectUsers
	| e  |
	self title: 'Select members of group ', self observee name.
	e := WebElement new.
	e add: self hierarchyLinksElement; addBreak.
	e addTextH1: self title; addBreak.
	e add: self errorReport. "if any"
	e addText: 'Note: members are immediatelly added or removed from group after they are checked/unchecked!!'.
	e add: self userSelectionElement.
	self style pageFrameWith: e title: self title! !
!WebUserGroupApp categoriesFor: #adminElement!printing-elements!public! !
!WebUserGroupApp categoriesFor: #hierarchyLinksElement!printing-elements!public! !
!WebUserGroupApp categoriesFor: #userSelectionElement!printing-elements!public! !
!WebUserGroupApp categoriesFor: #usersGridElement!printing-elements!public! !
!WebUserGroupApp categoriesFor: #usersInGroup!accessing!public! !
!WebUserGroupApp categoriesFor: #usersInGroup:!accessing!public! !
!WebUserGroupApp categoriesFor: #viewMain!printing!public! !
!WebUserGroupApp categoriesFor: #viewSelectUsers!printing!public! !

