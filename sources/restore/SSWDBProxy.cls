"Filed out from Dolphin Smalltalk 7"!

nil subclass: #SSWDBProxy
	instanceVariableNames: 'proxiedObject reStore'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SSWDBProxy guid: (GUID fromString: '{5a3e3dd8-3990-11d5-b1df-444553540000}')!
SSWDBProxy comment: 'Copyright 2000/2001 Solutions Software Limited'!
!SSWDBProxy categoriesForClass!Unclassified! !
!SSWDBProxy methodsFor!

__ensureActive

	"1/10/2001
	
	Check if the receiver is in its reStore's current transaction. If not, add it to the transaction

	c.f. _ensureActiveIn:, which is a distinct method sent only by objects external to the proxy mechanism.
	__ensureActive is sent internally within the proxy mechanism, 
	hence the receipt of the message cannot be taken as a guarantee of non-activity"
	
	proxiedObject == nil ifTrue: [self _recoverProxiedObject].

	(reStore transaction includesProxy: self) ifFalse: [self _referenced]!

_allReferences

	"8/10/2000 

	For references to the receiver, not the proxiedObject"

	<primitive: 153>
	^nil primitiveFailed!

_checkHasChanged

	"20/8/2000

	Return whether the receiver's proxiedObject has been changed 
	from its representation in the database.

	Compared to _hasChanged, the inferrence is that this is a 'quick test',
	not related to commiting those changes"
	
	^self subclassResponsibility!

_commitChanges

	"22/10/2000
	
	Commit to the reStore changes to the receiver's proxiedObject.
	Return a Boolean indicating success"
	
	self subclassResponsibility!

_commitIn: anSSWReStore

	"Commit the receiver by referencing it (the parameter is ignored)"

	^self _referenced!

_doesNotUnderstand: aMessage

	"6/8/2000
	
	Forward to the proxiedObject"
	
	| me result |

	proxiedObject == nil ifTrue: [self _recoverProxiedObject].

	"Swap references to the receiver and proxiedObject.
	From hereon, must use me instead of self, and not reference inst vars directly"
	me := self _swapReferences.

	[result := me _proxiedObject perform: aMessage selector withArguments: aMessage arguments]
		ensure: [me _reStore proxy: me forwarded: aMessage].
	
	^result!

_ensureActiveIn: anSSWReStore

	"Created 1/10/2001
	
	Ensure that the receiver is 'active' in the given ReStore 
	'active' means persistent in anSSWReStore, and present in the current transaction.

	Since the message has been received by a proxy then we can sumise it is persistent, 
	but not active in the current transaction - reference it to arrange this"

	proxiedObject == nil ifTrue: [self _recoverProxiedObject].

	self _referenced!

_ensurePersistentIn: anSSWReStore

	"1/10/2001
	
	Check if the receiver is persistent in the given SSWReStore"
	
	"Proxies are persistent by default - only need check anSSWReStore"
	anSSWReStore == reStore ifFalse: [nil error: 'Attempt to move object between ReStores - Invalid']!

_forgetProxiedObject

	"6/8/2000
	
	Dispose of the reference to the receiver's proxiedObject"
	
	proxiedObject := nil!

_hasChanged

	"20/8/2000

	Return whether the receiver's proxiedObject has been changed
	from its representation in the database

	Compared to _checkHasChanged, the inferrence is that if the receiver has 
	actually changed,	then the receiver will next be sent _prepareToCommit. 
	Subclasses may take advantage by caching some of the work done here"

	^self _checkHasChanged!

_hasChangedFrom: anObject

	"20/8/2000"
	
	^(self == anObject) not!

_identicalTo: anotherProxy

	"8/10/2000 

	Proxy equivalent to == "

	<primitive: 110>
	^self primitiveFailed
!

_identityHash

	"8/10/2000 

	Answer the receiver proxy's identity"
	
	<primitive: 75>
	^nil primitiveFailed
!

_isDeleted

	"21/1/2001"
	
	^self subclassResponsibility!

_isKindOf: aClass

	"Private - 21/3/2001"
	
	<primitive: 57>!

_isRecovered

	"21/1/2001"
	
	^proxiedObject ~~ nil!

_newProxiedObject: anObject

	"6/8/2000
	
	Set proxiedObject, but the implication is anObject is new, i.e. not yet persistent.
	Defer to _setProxiedlObject: by default; subclasses may override as necessary"
	
	self _setProxiedObject: anObject!

_oneWayBecome: anObject

	"8/10/2000 

	Reimplement for proxy object destruction (development only)"
	
	<primitive: 154>
	^nil primitiveFailed
!

_postCommitChanges

	"24/4/2001

	The receiver's changes have been successfully committed.
	Carry out any necessary internal updates"

	^self!

_postSwapReferences

	"23/5/2001

	Carry out any tidying up actions required after a _swapReferences"

	^self!

_prepareToCommit

	"22/10/2000
	
	Prepare to commit changes to the receiver's proxiedObject"
	
	self subclassResponsibility!

_proxiedObject

	"6/8/2000
	
	proxiedObject stores the actual object which the receiver is a proxy for"
	
	^proxiedObject!

_proxiedObject: anObject

	"6/8/2000
	
	proxiedObject stores the actual object which the receiver is a proxy for"
	
	proxiedObject := anObject!

_proxyAt: index

	"14/5/2001"

	<primitive: 60>
	^nil errorAt: index!

_proxyAt: index put: value

	"14/5/2001"

	<primitive: 61>
	^nil errorAt: index put: value!

_proxyBasicPrintOn: aStream

	"14/5/2001"

	aStream
		nextPutAll: 'a ';
		nextPutAll: self _proxyClass name asString!

_proxyBasicPrintString

	"14/5/2001"

	| stream |

	stream := WriteStream on: (String new: 24).

	self _proxyBasicPrintOn: stream.

	^stream contents!

_proxyBasicSize

	"14/5/2001"

	<primitive: 62>
	^nil primitiveFailed!

_proxyClass

	"31/3/01"

	<primitive: 111>
	^nil primitiveFailed!

_proxyInstVarAt: index

	"14/5/2001"

	<primitive: 73>
	^index isInteger
		ifTrue: [nil errorSubscriptBounds: index]
		ifFalse: [Error nonIntegerIndex: index]!

_proxyInstVarAt: index put: value

	"14/5/2001"
	<primitive: 74>

	^index isInteger
		ifTrue: [
			(index between: 1 and: self _proxyClass instSize + self _proxyBasicSize)
				ifTrue: [nil errorCantHold: value]
				ifFalse: [nil errorSubscriptBounds: index]]
		ifFalse: [Error nonIntegerIndex: index]
!

_proxySize

	"14/5/2001"

	<primitive: 62>
	^nil primitiveFailed!

_recoverProxiedObject

	"6/8/2000
	
	Recover the receiver's proxiedObject from the database"
	
	self subclassResponsibility!

_referenced

	"12/5/2001
	
	This message is sent by clients of the receiver which access the proxiedObject directly,
	but wish such accesses to be notified to interested parties in the same way as a DNU send.

	Carry out the same notifications as occur during the receiver's implementation of DNU"

	| me |

	"Unless the receiver is new, swap references to the receiver and proxiedObject.
	From hereon, must use me instead of self, and not reference inst vars directly"
	self _isPersistent
		ifTrue: [me := self _swapReferences]
		ifFalse: [me := self].

	me _reStore proxy: me forwarded: ##(Message selector: #_referenced).
	
	^me!

_reStore

	"6/8/2000
	
	reStore stores the SSWReStore which owns the object for which the receiver is a proxy"
	
	^reStore!

_reStore: anSSWReStore

	"6/8/2000
	
	reStore stores the SSWReStore which owns the object for which the receiver is a proxy"
	
	reStore := anSSWReStore!

_rollbackChanges

	"20/10/2000
	
	Forget changes to the receiver.
	By default, this is done by forgetting about the proxiedObject (forcing a re-read)"
	
	self _forgetProxiedObject!

_setProxiedObject: anObject

	"6/8/2000
	
	Set proxiedObject ONLY - no other actions.
	Subclasses should NEVER override"
	
	proxiedObject := anObject!

_swapReferences

	"23/5/2001

	Swap references to the receiver with references to the proxiedObject, returning the receiver.
	Subclasses should not override this method, but instead use _postSwapReferences"

	| me him |

	"Cannot swap references if no proxy"
	proxiedObject == nil ifTrue: [^self].

	"Set up 'me' and 'him' so that they will be correct after the swap"
	me := proxiedObject.
	him := self.

	proxiedObject become: self.

	me _setProxiedObject: him.
	me _postSwapReferences.

	^me!

_unstore

	"21/1/2001

	Mark the receiver in such a way that it will be deleted from the database on commit"

	self subclassResponsibility!

~~ comparand

	"Answer whether the <Object>, comparand,  is NOT identical to the receiver.
	Implementation Note: This is faster than the obvious '^(self == anObject) not'
	because of Compiler optimisation of #==."

	^(self == comparand) == false!

debugPrintString

	"8/10/2000
	
	Do not fault the receiver just for a debugger"
	
	^proxiedObject == nil
		ifTrue: ['<Unrecovered Proxy>']
		ifFalse: ['<', proxiedObject debugPrintString, '>']!

doesNotUnderstand: aMessage

	"Patched for issue 120-011"

	"Forward aMessage to the proxiedObject, subject to the transactionMutex"
	
	[(self _proxyInstVarAt: 2) transactionCritical: 
		["Make sure that some other process has not swapped my references while I was waiting for the mutex."
		| me |
		self isDBProxy ifTrue: 
			[proxiedObject == nil ifTrue: [self _recoverProxiedObject].
			"Swap references to the receiver and proxiedObject. 
			From hereon, must use me instead of self to refer to the proxy, and not reference inst vars directly."
			me := self _swapReferences.
			me _reStore proxy: me forwarded: aMessage]]] 
		on: MessageNotUnderstood
		do: [:ex | ex selector = #_proxyInstVarAt: ifTrue: [ex return] ifFalse: [ex pass]].

	^aMessage value: self!

identityHash

	"8/10/2000 

	Answer the receiver proxy's identity. No need to bother the proxiedObject,
	since this will aquire the same identityHash	following _swapReferenced"

	<primitive: 75>
	^nil primitiveFailed
!

instVarAt: anInteger

	"21/1/2001
	
	This is a standard message which does not modify the proxiedObject.
	Hence forward without notification"	
	
	proxiedObject == nil ifTrue: [self _recoverProxiedObject].

	^proxiedObject instVarAt: anInteger
!

isDBProxy

	"14/8/2000"
	
	^true!

printOn: aStream

	"12/5/2001

	For efficiency, recognise this as a non-modifying method.
	ASSERT: the proxiedObject is not modified when sent this message"

	proxiedObject == nil ifTrue: [self _recoverProxiedObject].

	^proxiedObject printOn: aStream!

printString

	"12/5/2001

	For efficiency, recognise this as a non-modifying method.
	ASSERT: the proxiedObject is not modified when sent this message"

	proxiedObject == nil ifTrue: [self _recoverProxiedObject].

	^proxiedObject printString!

subclassResponsibility

	"22/10/2000
	
	Revector to a well-known object"
	
	^nil subclassResponsibility!

yourself

	"6/8/2000
	
	No need to bother the proxiedObject"
	
	^self! !
!SSWDBProxy categoriesFor: #__ensureActive!actions!public! !
!SSWDBProxy categoriesFor: #_allReferences!forwarding!public! !
!SSWDBProxy categoriesFor: #_checkHasChanged!public!testing! !
!SSWDBProxy categoriesFor: #_commitChanges!actions!public! !
!SSWDBProxy categoriesFor: #_commitIn:!actions!public! !
!SSWDBProxy categoriesFor: #_doesNotUnderstand:!forwarding!public! !
!SSWDBProxy categoriesFor: #_ensureActiveIn:!actions!public! !
!SSWDBProxy categoriesFor: #_ensurePersistentIn:!actions!public! !
!SSWDBProxy categoriesFor: #_forgetProxiedObject!actions!public! !
!SSWDBProxy categoriesFor: #_hasChanged!public!testing! !
!SSWDBProxy categoriesFor: #_hasChangedFrom:!public!testing! !
!SSWDBProxy categoriesFor: #_identicalTo:!forwarding!public! !
!SSWDBProxy categoriesFor: #_identityHash!forwarding!public! !
!SSWDBProxy categoriesFor: #_isDeleted!public!testing! !
!SSWDBProxy categoriesFor: #_isKindOf:!private!testing! !
!SSWDBProxy categoriesFor: #_isRecovered!public!testing! !
!SSWDBProxy categoriesFor: #_newProxiedObject:!accessing!public! !
!SSWDBProxy categoriesFor: #_oneWayBecome:!actions!public! !
!SSWDBProxy categoriesFor: #_postCommitChanges!actions!public! !
!SSWDBProxy categoriesFor: #_postSwapReferences!actions!public! !
!SSWDBProxy categoriesFor: #_prepareToCommit!actions!public! !
!SSWDBProxy categoriesFor: #_proxiedObject!accessing!public! !
!SSWDBProxy categoriesFor: #_proxiedObject:!accessing!public! !
!SSWDBProxy categoriesFor: #_proxyAt:!accessing:direct!public! !
!SSWDBProxy categoriesFor: #_proxyAt:put:!accessing:direct!public! !
!SSWDBProxy categoriesFor: #_proxyBasicPrintOn:!accessing:direct!public! !
!SSWDBProxy categoriesFor: #_proxyBasicPrintString!accessing:direct!public! !
!SSWDBProxy categoriesFor: #_proxyBasicSize!accessing:direct!private! !
!SSWDBProxy categoriesFor: #_proxyClass!accessing:direct!public! !
!SSWDBProxy categoriesFor: #_proxyInstVarAt:!accessing:direct!private! !
!SSWDBProxy categoriesFor: #_proxyInstVarAt:put:!accessing:direct!private! !
!SSWDBProxy categoriesFor: #_proxySize!accessing:direct!public! !
!SSWDBProxy categoriesFor: #_recoverProxiedObject!actions!public! !
!SSWDBProxy categoriesFor: #_referenced!actions!public! !
!SSWDBProxy categoriesFor: #_reStore!accessing!public! !
!SSWDBProxy categoriesFor: #_reStore:!accessing!public! !
!SSWDBProxy categoriesFor: #_rollbackChanges!actions!public! !
!SSWDBProxy categoriesFor: #_setProxiedObject:!accessing!public! !
!SSWDBProxy categoriesFor: #_swapReferences!actions!public! !
!SSWDBProxy categoriesFor: #_unstore!actions!public! !
!SSWDBProxy categoriesFor: #~~!forwarding!public! !
!SSWDBProxy categoriesFor: #debugPrintString!forwarding!public! !
!SSWDBProxy categoriesFor: #doesNotUnderstand:!forwarding!public! !
!SSWDBProxy categoriesFor: #identityHash!forwarding!public! !
!SSWDBProxy categoriesFor: #instVarAt:!forwarding!public! !
!SSWDBProxy categoriesFor: #isDBProxy!public!testing! !
!SSWDBProxy categoriesFor: #printOn:!forwarding!public! !
!SSWDBProxy categoriesFor: #printString!forwarding!public! !
!SSWDBProxy categoriesFor: #subclassResponsibility!forwarding!public! !
!SSWDBProxy categoriesFor: #yourself!forwarding!public! !

