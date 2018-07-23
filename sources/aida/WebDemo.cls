"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebDemo
	instanceVariableNames: 'introduction date input delayedInput field1 field2 editField content submitValue deleted'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebDemo guid: (GUID fromString: '{5b98ea3e-4dda-4e76-8ea6-2a9b4f792ccb}')!
WebDemo comment: ''!
!WebDemo categoriesForClass!Unclassified! !
!WebDemo methodsFor!

content
	"for Rich Editor demo"
	content isNil ifTrue: [^''].
	^content!

content: aString
	"for Rich Editor demo"
	^content := aString!

date
	date isNil ifTrue: [^''].
	^date!

date: aString
	date := aString!

defaultIntroductionText

^'<b>Congratulations!!</b><br><br>
You just started your AIDA/Web Smalltalk Web Application Server. Here you can look at few simple <a href=/demo.html?view=grid><b>demos</b></a> (see navigation bar at the left) and on top left there are links to main website, where you can find more information. <br>
<br>
You are encougared to:
<ul>
<li>look at <a href=http://www.aidaweb.si/screenshots.html><b>Screenshots</b></a> to see, what kind of complex web applications you can build with AIDA/Web,</li>
<li>see <a href=http://www.aidaweb.si/tutorial.html><b>Tutorial</b></a> to build your first web application,</li>
<li>read other <a href=http://www.aidaweb.si/documentation.html><b>Documentation</b></a> to learn more (Architecture, Administrator''s guide, Programer''s guide, Ajax, Advanced features, Articles and presentations and more),</li> 
<li>join the <a href=http://www.aidaweb.si/community.html><b>Community</b></a>.</li>
</ul>
You can also <a href=/admin.html?view=login><b>login</b></a> with username: <b>admin</b> and password: <b>password</b>. <br><br>

Development team wish you a lot of great moments with Aida/Web !!
'.!

delayedInput
	delayedInput isNil ifTrue: [^''].
	^delayedInput!

delayedInput: aString
	delayedInput := aString!

delete
	"for a control flow example"
	deleted := true.!

deleted
	"for a control flow example"
	deleted isNil ifTrue: [self resetDelete].
	^deleted!

editField
	"for in-place editor demo"
	editField isNil ifTrue: [^'Click me to edit!!'].
	^editField!

editField: anObject
	editField := anObject!

field1
	^field1!

field1: anObject
	field1 := anObject!

field2
	^field2!

field2: anObject
	field2 := anObject!

input
	input isNil ifTrue: [^''].
	^input!

input: aString
	input := aString!

introduction
	"introduction text, In instvar to allow changing it by Scribo and other packages at installation"
	introduction isNil ifTrue: [self introduction: self defaultIntroductionText].
	^introduction!

introduction: aString
	"introduction text, In instvar to allow changing it by Scribo and other packages at installation"
	introduction := aString.!

preferedUrl
	^'/demos.html'!

resetDelete
	"for a control flow example"
	deleted := false.!

submitValue
	submitValue isNil ifTrue: [^''].
	^submitValue!

submitValue: aString
	submitValue := aString! !
!WebDemo categoriesFor: #content!accessing!public! !
!WebDemo categoriesFor: #content:!accessing!public! !
!WebDemo categoriesFor: #date!accessing!public! !
!WebDemo categoriesFor: #date:!accessing!public! !
!WebDemo categoriesFor: #defaultIntroductionText!introduction!public! !
!WebDemo categoriesFor: #delayedInput!accessing!public! !
!WebDemo categoriesFor: #delayedInput:!accessing!public! !
!WebDemo categoriesFor: #delete!accessing!public! !
!WebDemo categoriesFor: #deleted!accessing!public! !
!WebDemo categoriesFor: #editField!accessing!public! !
!WebDemo categoriesFor: #editField:!accessing!public! !
!WebDemo categoriesFor: #field1!accessing!public! !
!WebDemo categoriesFor: #field1:!accessing!public! !
!WebDemo categoriesFor: #field2!accessing!public! !
!WebDemo categoriesFor: #field2:!accessing!public! !
!WebDemo categoriesFor: #input!accessing!public! !
!WebDemo categoriesFor: #input:!accessing!public! !
!WebDemo categoriesFor: #introduction!introduction!public! !
!WebDemo categoriesFor: #introduction:!introduction!public! !
!WebDemo categoriesFor: #preferedUrl!accessing!public! !
!WebDemo categoriesFor: #resetDelete!accessing!public! !
!WebDemo categoriesFor: #submitValue!accessing!public! !
!WebDemo categoriesFor: #submitValue:!accessing!public! !

!WebDemo class methodsFor!

default
	^AIDASite default demo! !
!WebDemo class categoriesFor: #default!accessing!public! !

