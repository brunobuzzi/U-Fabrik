"Filed out from Dolphin Smalltalk 7"!

SSWDBKeyedStaticCollectionSpec subclass: #SSWDBStaticDictionarySpec
	instanceVariableNames: 'keyClass isKeyDependent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBStaticDictionarySpec guid: (GUID fromString: '{51e5267a-93ea-11d5-b1e0-444553540000}')!
SSWDBStaticDictionarySpec comment: ''!
!SSWDBStaticDictionarySpec categoriesForClass!Unclassified! !
!SSWDBStaticDictionarySpec methodsFor!

aboutToBeUnstored: aProxyObject

	"30/9/2001
	
	Also unstore member keys, if the receiver is so dependent"

	self isKeyDependent ifTrue: [(self accessor valueIn: aProxyObject) keysDo: [ :each | each unstore]].

	^super aboutToBeUnstored: aProxyObject!

createCollectionTable

	"18/8/2001

	Intercept to set the Class of the key field in the collection table"
		
	super createCollectionTable.

	(self collectionTable fieldAccessing: #index) targetClass: self keyClass!

isKeyDependent

	"30/9/01

	Reimplemented to store in inst var since Dictionary keys can optionally be dependent"

	^isKeyDependent!

isKeyDependent: aBoolean

	"30/9/01

	See isKeyDependent"

	isKeyDependent := aBoolean!

keyClass

	"18/8/01

	keyClass stores the Class of the objects that are the keys to this Dictionary.
	This should be a valid base class (String, Date etc.) or a persistent class"

	^keyClass!

keyClass: aBasicClass

	"18/8/01

	keyClass stores the Class of the objects that are the keys to this Dictionary.
	This should be a valid base class (String, Date etc.) or a persistent class"

	keyClass := aBasicClass!

setKeyClass: aClass

	"30/9/2001
	
	Double-despatch to the argument"
	
	aClass beKeyClassOf: self
! !
!SSWDBStaticDictionarySpec categoriesFor: #aboutToBeUnstored:!actions - api!public! !
!SSWDBStaticDictionarySpec categoriesFor: #createCollectionTable!initializing!public! !
!SSWDBStaticDictionarySpec categoriesFor: #isKeyDependent!accessing!public! !
!SSWDBStaticDictionarySpec categoriesFor: #isKeyDependent:!accessing!public! !
!SSWDBStaticDictionarySpec categoriesFor: #keyClass!accessing!public! !
!SSWDBStaticDictionarySpec categoriesFor: #keyClass:!accessing!public! !
!SSWDBStaticDictionarySpec categoriesFor: #setKeyClass:!accessing!public! !

!SSWDBStaticDictionarySpec class methodsFor!

new

	"24/9/2001"

	^super new
		isKeyDependent: false;
		yourself! !
!SSWDBStaticDictionarySpec class categoriesFor: #new!instance creation!public! !

