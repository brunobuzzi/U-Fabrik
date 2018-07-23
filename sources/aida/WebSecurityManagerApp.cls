"Filed out from Dolphin Smalltalk 7"!

WebApplication subclass: #WebSecurityManagerApp
	instanceVariableNames: 'selectedUsers selectedGroups usr group aclObject aclForWho'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebSecurityManagerApp guid: (GUID fromString: '{7ffc1df8-173f-4f70-8924-3150685e8d23}')!
WebSecurityManagerApp comment: ''!
!WebSecurityManagerApp categoriesForClass!Unclassified! !
!WebSecurityManagerApp methodsFor!

aclForWho
	^aclForWho!

aclForWho: anObject
	aclForWho := anObject!

aclForWhoElement
	| e aclObjects ident |
	e := WebElement new.
	(self aclForWho isKindOf: WebUser)
		ifTrue: [e addTextH2: 'User: ', self aclForWho someId]
		ifFalse: [e addTextH2: 'Group: ', self aclForWho name].
	aclObjects := WebApplication allWebAppClasses.
	aclObjects do: [:app |
		ident := WebElement new.
		app appClassLevel timesRepeat: [ident addNbSp: 4].
		e add: ident.
		app allViews isEmpty
			ifFalse:
				[e add: ((WebLink  text: app name asString linkTo: self observee)
					view: #aclObject; parameter: 'index' value: (aclObjects indexOf: app) printString)]
			ifTrue: [e addText: app name asString].
		e addBreak].
	^e!

aclObject
	^aclObject!

aclObject: anObject
	aclObject := anObject!

actionAddGroup
	self group ~= '' ifTrue: [self observee addGroup: self group].
	self newView: #groups.!

actionAddUser
	self usr ~= '' ifTrue: [self observee addUser: self usr].
	self newView: #users.!

actionConfirmRemoveGroups
	self selectedGroups notEmpty ifTrue: [
		self selectedGroups do: [:each | self observee removeGroup: each]].
	self redirectToView: #groups!

actionConfirmRemoveUsers
	self selectedUsers notEmpty ifTrue: [
		self selectedUsers do: [:each | self observee removeUser: each]].
	self redirectToView: #users!

actionRemoveGroups
	self selectedGroups notEmpty ifTrue: [
		^self redirectToView: #confirmRemoveGroups].
	self redirectToView: #groups!

actionRemoveUsers
	self selectedUsers notEmpty ifTrue: [
		^self redirectToView: #confirmRemoveUsers].
	self redirectToView: #users!

allYesNoLinks
	| e |
	e := WebElement new.
	e
		addText: 'all views: ';
		addLinkTo: self observee text: ' YES ' view: #aclObject parameter: 'allViews' value: 'YES';
		add: ((WebLink text: ' NO ' linkTo: self observee)
			view: #aclObject;
			parameter: 'allViews' value: 'NO');
		addText: 'all updates: ';
		add: ((WebLink text: ' YES ' linkTo: self observee)
			view: #aclObject;
			parameter: 'allUpdates' value: 'YES');
		add: ((WebLink text: ' NO ' linkTo: self observee)
			view: #aclObject;
			parameter: 'allUpdates' value: 'NO');
		addText: 'all encrypted: ';
		add: ((WebLink text: ' YES ' linkTo: self observee)
			view: #aclObject;
			parameter: 'allEncrypted' value: 'YES');
		add: ((WebLink text: ' NO ' linkTo: self observee)
			view:  #aclObject;
			parameter: 'allEncrypted' value: 'NO').
	^e!

checkAccessRight: aSymbol
	"if YES or NO is pressed for a #view or #update method in aclObjectPage, then set or reset a view
	access rights for current user or group, web app and view symbol"
	| right command |
	(self session lastRequest includesQuery: 'right') 
		ifTrue: [right := (self session lastRequest queryAt: 'right')].
	aSymbol = #view
		ifTrue:
			[(self session lastRequest includesQuery: 'viewRight') 
				ifTrue: [command := (self session lastRequest queryAt: 'viewRight')] ]
		ifFalse:
			[(self session lastRequest includesQuery: 'updateRight') 
				ifTrue: [command := (self session lastRequest queryAt: 'updateRight')] ].
	
	command = 'YES' ifTrue: 
		[self observee 
			setAccessRights: 
				(aSymbol = #view
					ifTrue: [aclObject viewRightSymbolFor: right asSymbol]
					ifFalse:  [aclObject updateRightSymbolFor: right asSymbol])
			for: aclForWho 
			on: self aclObject name].
	command = 'NO' ifTrue: 
		[self observee 
			removeAccessRights: 
				(aSymbol = #view
					ifTrue: [aclObject viewRightSymbolFor: right asSymbol]
					ifFalse:  [aclObject updateRightSymbolFor: right asSymbol])
			for: aclForWho 
			on: self aclObject name].!

checkAllYesNo
	"if YES or NO is pressed for a #view or #update method in aclObjectPage, then set or reset a view
	access rights for current user or group, web app and view symbol"
	| yesNo |
	(self session lastRequest includesQuery: 'allViews') 
		ifTrue: 
			[yesNo := (self session lastRequest queryAt: 'allViews').
			self aclObject allViews do: [:each |
				yesNo = 'YES'
					ifTrue: 
						[self observee
							setAccessRights: (aclObject viewRightSymbolFor: each)
							for: aclForWho 
							on: self aclObject name]
					ifFalse: 
						[self observee
							removeAccessRights: (aclObject viewRightSymbolFor: each)
							for: aclForWho 
							on: self aclObject name] ] ].
	(self session lastRequest includesQuery: 'allUpdates') 
		ifTrue: 
			[yesNo := (self session lastRequest queryAt: 'allUpdates').
			self aclObject allViews do: [:each |
				(aclObject actionMethodForView: each) notNil ifTrue: 
					[yesNo = 'YES'
						ifTrue: 
							[self observee
								setAccessRights: (aclObject updateRightSymbolFor: each)
								for: aclForWho 
								on: self aclObject name]
						ifFalse: 
							[self observee
								removeAccessRights: (aclObject updateRightSymbolFor: each)
								for: aclForWho 
								on: self aclObject name] ] ] ].
	(self session lastRequest includesQuery: 'allEncrypted') 
		ifTrue: 
			[yesNo := (self session lastRequest queryAt: 'allEncrypted').
			self aclObject allViews do: [:each |
				yesNo = 'YES'
					ifTrue: [self observee
						setAccessRights: (aclObject encryptSymbolFor: each)
						for: aclForWho 
						on: self aclObject name]
					ifFalse: 	[self observee
						removeAccessRights: (aclObject encryptSymbolFor: each)
						for: aclForWho 
						on: self aclObject name]  ] ].!

checkIfEncrypted
	| right  command |
	(self session lastRequest includesQuery: 'right') 
		ifTrue: [right := (self session lastRequest queryAt: 'right')].
	(self session lastRequest includesQuery: 'encrypt') 
 		ifTrue: [command := (self session lastRequest queryAt: 'encrypt')].
	command = 'YES' ifTrue: 
		[self observee 
			setAccessRights: (aclObject encryptSymbolFor: right)
			for: aclForWho 
			on: self aclObject name].
	command = 'NO' ifTrue: 
		[self observee 
			removeAccessRights: (aclObject encryptSymbolFor: right)
			for: aclForWho 
			on: self aclObject name].!

group
	^group!

group: anObject
	group := anObject!

groupSelectionElement
	| e |
	self selectedGroups: OrderedCollection new.
	e := WebElement new.
	e add: ((WebMenu aspect: #menuName collection: self site securityManager allGroups
		selected: self selectedGroups) size: 6; yourself).
	^e!

groupsGridElement
	^ (WebGrid new width: self style pageContentWidth)
		columnNames: #(nil 'Group name' 'Members');
		columnAspects: #(nil name nil);
		columnLinkViews: #(nil main nil);
		collection: (self observee allGroups asSortedCollection: [:g1 :g2 | g1 name < g2 name]);
		column: 3 addBlock: [:each | self usersInGroupElementFor: each];
		columnFilters: #(nil true nil);
		setNumbering;
		rowsOnPage: 20;
		yourself!

groupsOfUserElementFor: anUser
	| e |
	e := WebElement new.
	(anUser groups asSortedCollection: [:g1 :g2 | g1 name < g2 name]) 
		do: [:each | e addLinkTo: each text: each name]
		separatedBy: [e addText: ', '].
	^e!

hierarchyLinksElement
	| e ttext |
	e := WebElement new.
	e addText: self site name, ' / '.
	self view = #main 
		ifTrue: [e addLinkTo: self observee text: '<b>Security</b>']
		ifFalse: [
			e addLinkTo: self observee text: 'Security'.
			e addText: ' / '.
			ttext := self view = #users ifTrue: ['Users'] ifFalse: ['Groups'].
			e addLinkTo: self observee text: '<b>', ttext, '</b>' view: self view].

	^e!

needsEncryption: aViewSymbol
	^self observee 
		has: self aclForWho
		rightTo: (aclObject encryptSymbolFor: aViewSymbol)
		on: self aclObject name!

negate: yesNoString

		yesNoString = 'YES' ifTrue: [^'NO'] ifFalse: [^'YES'].!

selectedGroups
	selectedGroups isNil ifTrue: [^OrderedCollection new].
	^selectedGroups!

selectedGroups: aCollection
	selectedGroups := aCollection!

selectedUsers
	selectedUsers isNil ifTrue: [^OrderedCollection new].
	^selectedUsers!

selectedUsers: aCollection
	selectedUsers := aCollection!

setAclForWhoFromRequest
	"who can be user or group"
	| uuid user |
	uuid := self session lastRequest queryAt: 'who'.
	user := self observee userWithUuid: uuid.
	self aclForWho: (user notNil 
		ifTrue: [user] 
		ifFalse: [self observee groupWithUuid: uuid]).!

updateAllowedFor: aViewSymbol
	^self observee 
		has: self aclForWho
		rightTo: (aclObject updateRightSymbolFor: aViewSymbol)
		on: self aclObject name!

updateInOneGroupAllowedFor: aViewSymbol
	^self observee 
		hasUser: self aclForWho
		rightInAnyGroupTo: (aclObject class updateRightSymbolFor: aViewSymbol)
		on: self aclObject name!

userSelectionElement
	| e |
	self selectedUsers: OrderedCollection new.
	e := WebElement new.
	e add: ((WebMenu aspect: #menuName collection: self site securityManager allUsers 
		selected: self selectedUsers) size: 6; yourself).
	^e!

usersGridElement
	^ (WebGrid new width: self style pageContentWidth)
		columnNames: #(nil 'Name' 'Groups');
		columnAspects: #(nil nameSurname nil);
		columnLinkViews: #(nil main nil);
		collection: (self observee users asSortedCollection: [:u1 :u2 | u1 nameSurname < u2 nameSurname]);
		column: 3 addBlock: [:each | self groupsOfUserElementFor: each];
		columnFilters: #(nil true nil);
		setNumbering;
		rowsOnPage: 20;
		yourself!

usersInGroupElementFor: aGroup
	| e |
	e := WebElement new.
	(aGroup allUsers asSortedCollection: [:u1 :u2 | u1 nameSurname < u2 nameSurname]) 
		do: [:each | e addLinkTo: each text: each nameSurname]
		separatedBy: [e addText: ', '].
	^e!

usr
	"temporary user"
	^usr!

usr: aWebUser
	usr := aWebUser!

viewAclObject
	| e index aclRights actionMethod yesNo |
	(self session lastRequest includesQuery: 'index') 
		ifTrue: 
			[index := (self session lastRequest queryAt: 'index').
			self aclObject: (WebApplication allWebAppClasses at: index asInteger)].
	self checkAccessRight: #view.
	self checkAccessRight: #update.
	self checkIfEncrypted.
	self checkAllYesNo.
	self title: 'Access Rigths for: ', self aclObject name asString.
	e := WebElement new.
	e addTextH1: self title.
	(self aclForWho isKindOf: WebUser)
		ifTrue: [e addTextH2: 'User: ', self aclForWho someId]
		ifFalse: [e addTextH2: 'Group: ', self aclForWho name].
	e add: self allYesNoLinks.
	aclRights := SortedCollection withAll: self aclObject allViews sortBlock: [:a : b | a < b]. 
	e table border: 1.
	e cell addText: 'view'.
	e newCell colspan: 2; addText: 'view right'.
	e newCell colspan: 2; addText: 'update right'.
	e newCell addText: 'encrypt'. e newRow.
	aclRights do: [:right |
		e cell addText: right asString attributes: #bold.
		e newCell addText: (self aclObject viewMethodForView: right asSymbol) asString.
		(self viewAllowedFor: right) ifTrue: [yesNo := 'YES'] ifFalse: [yesNo := 'NO'].
		e newCell
			add: ((WebLink  text: ('<b>', yesNo) linkTo: self observee)
				view: #aclObject;
				parameter: 'right' value: right asString;
				parameter: 'viewRight' value: (self negate: yesNo)).
		(self aclForWho = 'user') ifTrue: 
			[(self viewInOneGroupAllowedFor: right) ifTrue: [yesNo := 'YES'] ifFalse: [yesNo := 'NO'].
			e newCell addText: ('<font size=-1>', yesNo)].

		actionMethod := (self aclObject actionMethodForView: right asSymbol).
		e newCell
			addText: (actionMethod notNil ifTrue: [actionMethod asString] ifFalse: ['<br>']).
		(self updateAllowedFor: right) ifTrue: [yesNo := 'YES'] ifFalse: [yesNo := 'NO'].
		actionMethod notNil
			ifTrue: 
				[e newCell
					add: ((WebLink  text: ('<b>', yesNo) linkTo: self observee)
						view:  #aclObject;
						parameter: 'right' value: right asString;
						parameter: 'updateRight' value: (self negate: yesNo)).
				(self aclForWho = 'user') ifTrue: 
					[(self viewInOneGroupAllowedFor: right) 
						ifTrue: [yesNo := 'YES'] ifFalse: [yesNo := 'NO'].
					e newCell addText: ('<font size=-1>', yesNo)] ]
			ifFalse:
				[e newCell addText: '<br>'].
			(self needsEncryption: right) ifTrue: [yesNo := 'YES'] ifFalse: [yesNo := 'NO'].
		e newCell align: #center;
			add: ((WebLink  text: ('<b>', yesNo) linkTo: self observee)
				view: #aclObject;
				parameter: 'right' value: right asString;
				parameter: 'encrypt' value: (self negate: yesNo)).
		e newRow].

	self style pageFrameWith: e title: self title!

viewAclObjects
	| e |
	(self session lastRequest includesQuery: 'who') ifFalse: [^self redirectToView: #main].
	self setAclForWhoFromRequest.
	self aclForWho isNil ifTrue: [^self redirectToView: #main].
	self title: 'Access Rigths'.
	e := WebElement new.
	e addTextH1: self title.
	e add: self aclForWhoElement.
	self style pageFrameWith: e title: self title!

viewAddGroup
	| e |
	self group: WebUserGroup new.
	self title: 'Adding a new group on site: ', self site name.
	e := WebElement new.
	e addTextH1: self title;
		addText: 'New group name: ';
		add: (WebInputField new aspect: #name for: self group);
		addBreak;
		addButtonText: 'Add'.
	self style pageFrameWith: e title: self title!

viewAddUser
	| newUser |
	newUser := WebUser new.
	self redirectTo: newUser view: #add!

viewAllowedFor: aViewSymbol
	^self observee 
		has: self aclForWho
		rightTo: (aclObject viewRightSymbolFor: aViewSymbol)
		on: self aclObject name!

viewConfirmRemoveGroups
	| e l |
	self selectedGroups isEmpty ifTrue: [^self redirectToView: #groups].
	self title: 'Confirmation for removing groups' .
	e := WebElement new.
	e addTextBold: 'Do you really want to remove the following groups? '; addBreak.
	l := WebList newUnordered.
	self selectedGroups do: [:each |
		l addText: each name].
	e add: l;
		addButtonText: 'Confirm'.
	self style pageFrameWith: e title: self title!

viewConfirmRemoveUsers
	| e l |
	self selectedUsers isEmpty ifTrue: [^self redirectToView: #users].
	self title: 'Confirmation for removing users' .
	e := WebElement new.
	e addTextBold: 'Do you really want to remove the following users? '; addBreak.
	l := WebList newUnordered.
	self selectedUsers do: [:each |
		l addText: each nameSurname].
	e add: l;
		addButtonText: 'Confirm'.
	self style pageFrameWith: e title: self title!

viewGroups
	| e |
	self title: 'Groups of users'.
	e := WebElement new.
	e add: self hierarchyLinksElement; addBreak.
	e addTextH1: self title. e addBreak.
	e addLinkTo: self observee text: ' Add group ' view: #addGroup;
		addLinkTo: self observee text: ' Remove groups ' view: #removeGroups.
	e add: self groupsGridElement.
	self style pageFrameWith: e title: self title!

viewInOneGroupAllowedFor: aViewSymbol
	^self observee 
		hasUser: self aclForWho
		rightInAnyGroupTo: (aclObject viewRightSymbolFor: aViewSymbol)
		on: self aclObject name!

viewMain
	| e |
	self title: 'Security management'.
	e := WebElement new.
	e add: self hierarchyLinksElement; addBreak.
	e addTextH1: self title;
		addBreak;
		addLinkTo: self observee text: ' Users ' view: 'users';
		addText: ' (',self observee allUsers size printDotString,')';
		addBreak;
		addLinkTo: self observee text: ' Groups ' view: 'groups';
		addText: ' (',self observee allGroups size printDotString,')'.
	self style pageFrameWith: e title: self title!

viewRemoveGroups
	| e |
	self title: 'Removing groups'.
	e := WebElement new.
	e addTextH1: self title;
		addTextH2: 'Select groups to remove';
		add: self groupSelectionElement;
		addBreak;
		addButtonText: 'Remove'.
	self style pageFrameWith: e title: self title!

viewRemoveUsers
	| e |
	self title: 'Removing users'.
	e := WebElement new.
	e addTextH1: self title;
		addTextH2: 'Select users to remove';
		add: self userSelectionElement;
		addBreak;
		addButtonText: 'Remove'.
	self style pageFrameWith: e title: self title!

viewUsers
	| e |
	self title: 'Users'.
	e := WebElement new.
	e add: self hierarchyLinksElement; addBreak.
	e addTextH1: self title. e addBreak.
	e addLinkTo: self observee text: ' Add user ' view: #addUser;
		addLinkTo: self observee text: ' Remove users ' view: #removeUsers.
	e add: self usersGridElement.
	self style pageFrameWith: e title: self title! !
!WebSecurityManagerApp categoriesFor: #aclForWho!accessing!public! !
!WebSecurityManagerApp categoriesFor: #aclForWho:!accessing!public! !
!WebSecurityManagerApp categoriesFor: #aclForWhoElement!printing-elements!public! !
!WebSecurityManagerApp categoriesFor: #aclObject!accessing!public! !
!WebSecurityManagerApp categoriesFor: #aclObject:!accessing!public! !
!WebSecurityManagerApp categoriesFor: #actionAddGroup!actions!public! !
!WebSecurityManagerApp categoriesFor: #actionAddUser!actions!public! !
!WebSecurityManagerApp categoriesFor: #actionConfirmRemoveGroups!actions!public! !
!WebSecurityManagerApp categoriesFor: #actionConfirmRemoveUsers!actions!public! !
!WebSecurityManagerApp categoriesFor: #actionRemoveGroups!actions!public! !
!WebSecurityManagerApp categoriesFor: #actionRemoveUsers!actions!public! !
!WebSecurityManagerApp categoriesFor: #allYesNoLinks!printing-access control!public! !
!WebSecurityManagerApp categoriesFor: #checkAccessRight:!printing-access control!public! !
!WebSecurityManagerApp categoriesFor: #checkAllYesNo!printing-access control!public! !
!WebSecurityManagerApp categoriesFor: #checkIfEncrypted!printing-access control!public! !
!WebSecurityManagerApp categoriesFor: #group!accessing!public! !
!WebSecurityManagerApp categoriesFor: #group:!accessing!public! !
!WebSecurityManagerApp categoriesFor: #groupSelectionElement!printing-elements!public! !
!WebSecurityManagerApp categoriesFor: #groupsGridElement!printing-elements!public! !
!WebSecurityManagerApp categoriesFor: #groupsOfUserElementFor:!printing-elements!public! !
!WebSecurityManagerApp categoriesFor: #hierarchyLinksElement!printing-elements!public! !
!WebSecurityManagerApp categoriesFor: #needsEncryption:!printing-access control!public! !
!WebSecurityManagerApp categoriesFor: #negate:!printing-access control!public! !
!WebSecurityManagerApp categoriesFor: #selectedGroups!accessing!public! !
!WebSecurityManagerApp categoriesFor: #selectedGroups:!accessing!public! !
!WebSecurityManagerApp categoriesFor: #selectedUsers!accessing!public! !
!WebSecurityManagerApp categoriesFor: #selectedUsers:!accessing!public! !
!WebSecurityManagerApp categoriesFor: #setAclForWhoFromRequest!printing!public! !
!WebSecurityManagerApp categoriesFor: #updateAllowedFor:!printing-access control!public! !
!WebSecurityManagerApp categoriesFor: #updateInOneGroupAllowedFor:!printing-access control!public! !
!WebSecurityManagerApp categoriesFor: #userSelectionElement!printing-elements!public! !
!WebSecurityManagerApp categoriesFor: #usersGridElement!printing-elements!public! !
!WebSecurityManagerApp categoriesFor: #usersInGroupElementFor:!printing-elements!public! !
!WebSecurityManagerApp categoriesFor: #usr!accessing!public! !
!WebSecurityManagerApp categoriesFor: #usr:!accessing!public! !
!WebSecurityManagerApp categoriesFor: #viewAclObject!printing!public! !
!WebSecurityManagerApp categoriesFor: #viewAclObjects!printing!public! !
!WebSecurityManagerApp categoriesFor: #viewAddGroup!printing!public! !
!WebSecurityManagerApp categoriesFor: #viewAddUser!printing!public! !
!WebSecurityManagerApp categoriesFor: #viewAllowedFor:!printing-access control!public! !
!WebSecurityManagerApp categoriesFor: #viewConfirmRemoveGroups!printing!public! !
!WebSecurityManagerApp categoriesFor: #viewConfirmRemoveUsers!printing!public! !
!WebSecurityManagerApp categoriesFor: #viewGroups!printing!public! !
!WebSecurityManagerApp categoriesFor: #viewInOneGroupAllowedFor:!printing-access control!public! !
!WebSecurityManagerApp categoriesFor: #viewMain!printing!public! !
!WebSecurityManagerApp categoriesFor: #viewRemoveGroups!printing!public! !
!WebSecurityManagerApp categoriesFor: #viewRemoveUsers!printing!public! !
!WebSecurityManagerApp categoriesFor: #viewUsers!printing!public! !

