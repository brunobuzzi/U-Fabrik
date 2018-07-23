"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebClipboard
	instanceVariableNames: 'title url object'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebClipboard guid: (GUID fromString: '{974e41f8-40c0-4470-a7ae-dc873d187bc3}')!
WebClipboard comment: 'Used for cut/copy/paste page references (not page contents!!) for easier hyperlinking of pages. Every page should have copy action. Then you can paste url to related links section in some other page.

Instance Variables:
	title	<String> title of a page
	url	<String>	url link to a page'!
!WebClipboard categoriesForClass!Unclassified! !
!WebClipboard methodsFor!

asDocLink
	"return clipboard contents as a new DocLink"
	^DocLink new
		title: self title;
		url: self url;
		object: self object!

copyFromDocLink: aDocLink
	self title: aDocLink title.
	self url: aDocLink url.
	self object: aDocLink object!

isEmpty
	^(self url isNil or: [self url isEmpty]) and: [self object isNil].!

object
	^object!

object: anObject
	object := anObject!

title
	^title!

title: anObject
	title := anObject!

url
	^url!

url: anObject
	url := anObject! !
!WebClipboard categoriesFor: #asDocLink!converting!public! !
!WebClipboard categoriesFor: #copyFromDocLink:!converting!public! !
!WebClipboard categoriesFor: #isEmpty!public!testing! !
!WebClipboard categoriesFor: #object!accessing!public! !
!WebClipboard categoriesFor: #object:!accessing!public! !
!WebClipboard categoriesFor: #title!accessing!public! !
!WebClipboard categoriesFor: #title:!accessing!public! !
!WebClipboard categoriesFor: #url!accessing!public! !
!WebClipboard categoriesFor: #url:!accessing!public! !

