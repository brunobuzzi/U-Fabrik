"Filed out from Dolphin Smalltalk 7"!

Dictionary variableSubclass: #WebTranslDict
	instanceVariableNames: 'changes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebTranslDict guid: (GUID fromString: '{78a936bd-c348-404c-9062-e9f2b0ec7cff}')!
WebTranslDict comment: 'WebTrDictionary is a dictionary holding the last level in WebTranslator cache. Special dictinoary is needed to catch the changes when doing translations by translation tools and storing them back to appropriate class translation methods.

Instance Variables:
	changes	<Set>	keys of changed texts'!
!WebTranslDict categoriesForClass!Unclassified! !
!WebTranslDict methodsFor!

at: key ifAbsentPut: aBlock
	^self at: key ifAbsent: [self initialAt: key put: aBlock value]!

at: key put: value
	"this one should be used by translation tools!!"
	self changes add: key.
	^super at: key put: value!

changes
	changes isNil ifTrue: [changes := Set new].
	^changes!

initialAt: key put: value
	"this one does not register the change, use it for initial dict setup!!"
	^super at: key put: value! !
!WebTranslDict categoriesFor: #at:ifAbsentPut:!accessing!public! !
!WebTranslDict categoriesFor: #at:put:!accessing!public! !
!WebTranslDict categoriesFor: #changes!private! !
!WebTranslDict categoriesFor: #initialAt:put:!accessing!public! !

