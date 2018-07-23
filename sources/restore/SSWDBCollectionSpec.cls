"Filed out from Dolphin Smalltalk 7"!

SSWDBTableComponent subclass: #SSWDBCollectionSpec
	instanceVariableNames: 'templateCollection isValueDependent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBCollectionSpec guid: (GUID fromString: '{266e4dd1-398e-11d5-b1df-444553540000}')!
SSWDBCollectionSpec comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBCollectionSpec categoriesForClass!Unclassified! !
!SSWDBCollectionSpec methodsFor!

aboutToBeUnstored: aProxyObject

	"30/9/2001
	
	Also unstore member objects, if the receiver is dependent"

	self isValueDependent ifTrue: [(self accessor valueIn: aProxyObject) do: [ :each | each unstore]]!

applyTo: anObject withID: anInteger in: anSSWReStore

	"14/8/2000
	
	'Apply' the one-to-many relationship expressed by this object to the 'one' object anObject.
	This is done by assigning (using the receiver's accessor) a suitable proxy that can
	recover the collection of 'many' objects relating to anObject"
	
	| proxyCollection |
	
	proxyCollection := self collectionProxyClass new.
	proxyCollection
		_reStore: anSSWReStore;
		_collectionSpec: self.
	
	self accessor value: proxyCollection in: anObject!

collectionClass

	"18/9/2000"

	^self templateCollection class!

collectionProxyClass

	"21/1/2001
	
	Return the class of collection proxy to use for collections created by the receiver"
	
	^self subclassResponsibility!

containedTables

	"19/4/2001

	By default, no tables are contained"

	^#()!

dbInstancesFor: aCollectionProxy

	"Return a DBInstancesCollection representing the instances owned by aCollectionProxy
	and specified by the receiver"

	^self subclassResponsibility!

defineAs: aSymbol in: anSSWDBTable

	"19/5/2001

	The receiver has been specified as the kind of object held in inst var named aSymbol
	for the class whose DB table is anSSWDBTable.

	Add the receiver to anSSWDBTable returning the object created"

	^anSSWDBTable define: aSymbol asCollectionSpec: self
!

isKeyDependent

	"1/10/2001

	Return a Boolean indicating whether the key objects of the specified collection
	are dependent on the existence of the owner of that collection for their own existence.
	False by default since not all collections support keys; subclasses may override.
	c.f. isValueDependent (key and value terminology taken from keysAndValuesDo:)"

	^false!

isValueDependent

	"1/10/2001

	isValueDependent stores a Boolean indicating whether the value objects of the specified collection
	are dependent on the existence of the owner of that collection for their own existence.
	c.f. isKeyDependent (key and value terminology taken from keysAndValuesDo:)"

	^isValueDependent!

isValueDependent: aBoolean

	"1/10/2001

	isValueDependent stores a Boolean indicating whether the value objects of the specified collection
	are dependent on the existence of the owner of that collection for their own existence.
	c.f. isKeyDependent (key and value terminology taken from keysAndValuesDo:)"

	isValueDependent := aBoolean!

newCollection

	"18/9/2000"

	^self templateCollection copy!

newProxydCollectionFor: aProxyObject

	"21/1/2001"
	
	^self collectionProxyClass new
		_reStore: aProxyObject _reStore;
		_owner: aProxyObject;
		_collectionSpec: self;
		yourself!

recoverCollectionForProxy: aCollectionProxy

	"14/8/2000
	
	Recover and return the collection defined by the receiver 
	that is wrappered by the given collection proxy"

	^self subclassResponsibility!

templateCollection

	"18/9/2000
	
	collection stores an empty collection that is used as the template 
	for collections created by this class (i.e. a copy of templateCollection is used)"
	
	^templateCollection!

templateCollection: aCollection

	"18/9/2000
	
	collection stores an empty collection that is used as the template 
	for collections created by this class (i.e. a copy of templateCollection is used)"
	
	templateCollection := aCollection! !
!SSWDBCollectionSpec categoriesFor: #aboutToBeUnstored:!actions - api!public! !
!SSWDBCollectionSpec categoriesFor: #applyTo:withID:in:!actions - api!public! !
!SSWDBCollectionSpec categoriesFor: #collectionClass!evaluating!public! !
!SSWDBCollectionSpec categoriesFor: #collectionProxyClass!constants!public! !
!SSWDBCollectionSpec categoriesFor: #containedTables!evaluating!public! !
!SSWDBCollectionSpec categoriesFor: #dbInstancesFor:!evaluating!public! !
!SSWDBCollectionSpec categoriesFor: #defineAs:in:!defining!public! !
!SSWDBCollectionSpec categoriesFor: #isKeyDependent!accessing!public! !
!SSWDBCollectionSpec categoriesFor: #isValueDependent!accessing!public! !
!SSWDBCollectionSpec categoriesFor: #isValueDependent:!accessing!public! !
!SSWDBCollectionSpec categoriesFor: #newCollection!evaluating!public! !
!SSWDBCollectionSpec categoriesFor: #newProxydCollectionFor:!evaluating!public! !
!SSWDBCollectionSpec categoriesFor: #recoverCollectionForProxy:!actions - api!public! !
!SSWDBCollectionSpec categoriesFor: #templateCollection!accessing!public! !
!SSWDBCollectionSpec categoriesFor: #templateCollection:!accessing!public! !

!SSWDBCollectionSpec class methodsFor!

new

	"24/9/2001"

	^super new
		isValueDependent: false;
		yourself! !
!SSWDBCollectionSpec class categoriesFor: #new!instance creation!public! !

