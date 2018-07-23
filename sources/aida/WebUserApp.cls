"Filed out from Dolphin Smalltalk 7"!

WebApplication subclass: #WebUserApp
	instanceVariableNames: 'newPassword newPasswordConfirmation'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebUserApp guid: (GUID fromString: '{45ded5d5-a10a-4756-870b-725736960bcc}')!
WebUserApp comment: ''!
!WebUserApp categoriesForClass!Unclassified! !
!WebUserApp methodsFor!

actionAdd

	self newPassword trimBlanks isEmpty ifTrue: [
		self error: 'Password is empty!!'].
	self observee username trimBlanks isEmpty ifTrue: [
		self error: 'Username is empty!!'].
	self newPassword = self newPasswordConfirmation ifFalse: [
		self error: 'Passwords do not match!!'].
	self inError ifTrue: [^self redirectToView: #add].
	self observee passwordText: self newPassword.
	self site securityManager addUser: self observee.
	self redirectTo: self observee!

actionEdit
	self newPassword = self newPasswordConfirmation ifFalse: [
		self error: 'Passwords do not match!!'].
	self inError ifTrue: [^self redirectToView: #edit].
	self observee passwordText: self newPassword.
	self redirectTo: self observee!

actionsLineElement
	| e |
	e := WebElement new.
	self observee isGuest not
		ifTrue: [e addLinkTo: self observee text: 'Update information ' view: #edit]
		ifFalse: [e addText: 'User locked, changes not allowed '].
	e addLinkTo: self site securityManager text: ' Access rights '
		view: #aclObjects
		parameter: 'who' value: self observee uuid.
	^e!

basicInformationsElement
	| e |
	e := WebFieldSet new legend: 'Basic informations'.
	e cell addText: 'Username:'.
	e newCell addTextBold: self observee username.
	e newRow.
	e cell addText: 'Name:'.
	e newCell addTextBold: self observee name.
	e newRow.
	e cell addText: 'Surname:'.
	e newCell addTextBold: self observee surname.
	^e!

canBeViewed
	^self user inAdminGroup or: [self user == self observee]!

contactInformationsElement
	| e |
	e := WebFieldSet new legend: 'Contact informations'.
	e cell addText: 'Company:'.
	e newCell addTextBold: self observee company.
	e newRow.
	e cell addText: 'Address:'.
	e newCell addTextBold: self observee address.
	e newRow.
	e cell addText: 'City:'.
	e newCell addTextBold: self observee city.
	e newRow.
	e cell addText: 'Zip:'.
	e newCell addTextBold: self observee zip.
	e newRow.
	e cell addText: 'Phone:'.
	e newCell addTextBold: self observee phone.
	e newRow.
	e cell addText: 'Fax:'.
	e newCell addTextBold: self observee fax.
	e newRow.
	e cell addText: 'E-mail:'.
	e newCell addTextBold: self observee email.
	e newRow.
	e cell addText: 'Website:'.
	e newCell addTextBold: self observee website. 
	^e!

editElement
	| e |
	self newPassword: ''.
	self newPasswordConfirmation:  ''.
	e := WebElement new.
	self observee isLocked 
		ifTrue: [e cell addTextBold: 'User is locked!!'. e newRow]
		ifFalse:
			[e cell addText: 'Name:'.
			e newCell addInputFieldAspect: #name for: self observee. e newRow.
			e cell addText: 'Surname:'. 
			e newCell addInputFieldAspect: #surname for: self observee. e newRow.
			e cell addText: 'Company:'.
			e newCell addInputFieldAspect: #company for: self observee. e newRow.
			e cell addText: 'Address:'.
			e newCell addInputFieldAspect: #address for: self observee. e newRow.
			e cell addText: 'City:'.
			e newCell addInputFieldAspect: #city for: self observee. e newRow.
			e cell addText: 'Zip:'.
			e newCell addInputFieldAspect: #zip for: self observee. e newRow.
			e cell addText: 'Phone:'.
			e newCell addInputFieldAspect: #phone for: self observee. e newRow.
			e cell addText: 'Fax:'.
			e newCell addInputFieldAspect: #fax for: self observee. e newRow.
			e cell addText: 'E-mail:'.
			e newCell addInputFieldAspect: #email for: self observee. e newRow.
			e cell addText: 'Website:'.
			e newCell addInputFieldAspect: #website for: self observee. e newRow; newRow.
			e cell addText: 'Username:'.
			e newCell addInputFieldAspect: #username for: self observee. e newRow].
	e cell addText: ' New password:'.
	e newCell addPasswordFieldAspect: #newPassword for: self.
	e newRow.
	e cell addText: 'Confirm password:'.
	e newCell addPasswordFieldAspect: #newPasswordConfirmation for: self.
	e newRow.
	e cell addButtonText: 'Save'.
	^e!

groupInformationsElement
	| e |
	WebFieldSet new legend: 'Groups of this user'.
	e := WebList newUnordered.
	(self observee groups asSortedCollection: [:a :b | a name < b name]) do: [:each |
		e addLinkTo: each text: each name].
	^ WebFieldSet new 
		legend: 'Groups of this user';
		add: e;
		yourself!

hierarchyLinksElement
	| e |
	e := WebElement new.
	e addText: self site name, ' / '.
	e addLinkTo: self site securityManager text: 'Security'.
	e addText: ' / '.
	e addLinkTo: self site securityManager text: 'Users' view: #users.
	e addText: ' / '.
	e addLinkTo: self observee text: '<b>', self observee nameSurname, '</b>' view: self view.
	^e!

newPassword
	^ newPassword!

newPassword: aString
	newPassword := aString!

newPasswordConfirmation
	^ newPasswordConfirmation!

newPasswordConfirmation: aString
	newPasswordConfirmation := aString!

viewAdd
	^self viewEdit!

viewEdit
	| e |
	self canBeViewed ifFalse: [^self redirectTo: self site admin view: #login].
	self title: 'Edit user ', self observee nameSurname.
	e := WebElement new.
	e addTextH1: self title;
		addBreak;
		addErrorReport;
		add: self editElement.
	self style pageFrameWith: e title: self title!

viewMain
	| e |
	self canBeViewed ifFalse: [^self redirectTo: self site admin view: #login].
	self title: 'User ', self observee nameSurname.
	e := WebElement new.
	e add: self hierarchyLinksElement; addBreak.
	e addTextH1: self title;
		add: self basicInformationsElement;
		add: self contactInformationsElement;
		add: self groupInformationsElement;
		add: self actionsLineElement.
	self style pageFrameWith: e title: self title! !
!WebUserApp categoriesFor: #actionAdd!actions!public! !
!WebUserApp categoriesFor: #actionEdit!actions!public! !
!WebUserApp categoriesFor: #actionsLineElement!printing-elements!public! !
!WebUserApp categoriesFor: #basicInformationsElement!printing-elements!public! !
!WebUserApp categoriesFor: #canBeViewed!access-rights!public! !
!WebUserApp categoriesFor: #contactInformationsElement!printing-elements!public! !
!WebUserApp categoriesFor: #editElement!printing-elements!public! !
!WebUserApp categoriesFor: #groupInformationsElement!printing-elements!public! !
!WebUserApp categoriesFor: #hierarchyLinksElement!printing-elements!public! !
!WebUserApp categoriesFor: #newPassword!accessing!public! !
!WebUserApp categoriesFor: #newPassword:!accessing!public! !
!WebUserApp categoriesFor: #newPasswordConfirmation!accessing!public! !
!WebUserApp categoriesFor: #newPasswordConfirmation:!accessing!public! !
!WebUserApp categoriesFor: #viewAdd!printing!public! !
!WebUserApp categoriesFor: #viewEdit!printing!public! !
!WebUserApp categoriesFor: #viewMain!printing!public! !

