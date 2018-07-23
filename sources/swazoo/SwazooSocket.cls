"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SwazooSocket
	instanceVariableNames: 'accessor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooSocket guid: (GUID fromString: '{2b0d33cd-fb29-4cb1-abc7-2b170c41cc42}')!
SwazooSocket comment: ''!
!SwazooSocket categoriesForClass!Unclassified! !
!SwazooSocket methodsFor!

accept
	^self class accessor: self accessor acceptRetryingIfTransientErrors!

accessor
	^accessor!

accessor: aSocketAccessor 
	accessor := aSocketAccessor.!

close
	self accessor close!

isActive
	^self accessor isActive!

listenFor: anInteger 
	self accessor listenBackloggingUpTo: anInteger!

localAddress
	^self accessor getSocketName hostAddressString!

read: anInteger 
	^self accessor read: anInteger.!

read: anInteger timeout: aNumberOfMilliseconds 
	^(self accessor waitForReadDataUpToMs: aNumberOfMilliseconds) 
		ifTrue: [self read: anInteger]
		ifFalse: [ByteArray new]!

readInto: aByteArray startingAt: start for: length
	^self accessor readInto: aByteArray startingAt: start for: length!

remoteAddress
	^self accessor getPeerName hostAddressString!

stream
	^SwazooStream socket: self!

write: aByteArray 
	^self accessor write: aByteArray!

writeFrom: aByteArray startingAt: start for: length
	^self accessor writeFrom: aByteArray startingAt: start for: length! !
!SwazooSocket categoriesFor: #accept!public!server accessing! !
!SwazooSocket categoriesFor: #accessor!private! !
!SwazooSocket categoriesFor: #accessor:!private! !
!SwazooSocket categoriesFor: #close!accessing!public! !
!SwazooSocket categoriesFor: #isActive!public!testing! !
!SwazooSocket categoriesFor: #listenFor:!public!server accessing! !
!SwazooSocket categoriesFor: #localAddress!accessing!public! !
!SwazooSocket categoriesFor: #read:!accessing!public! !
!SwazooSocket categoriesFor: #read:timeout:!accessing!public! !
!SwazooSocket categoriesFor: #readInto:startingAt:for:!accessing!public! !
!SwazooSocket categoriesFor: #remoteAddress!accessing!public! !
!SwazooSocket categoriesFor: #stream!private! !
!SwazooSocket categoriesFor: #write:!accessing!public! !
!SwazooSocket categoriesFor: #writeFrom:startingAt:for:!accessing!public! !

!SwazooSocket class methodsFor!

accessor: aSocketAccessor 
	^self new accessor: aSocketAccessor!

connectedPair
	^SpSocket newSocketPair collect: [:each | self accessor: each]!

connectTo: aHostString port: anInteger 
	| newSocket |
	newSocket := SpSocket newTCPSocket.
	newSocket 
		connectTo: (SpIPAddress hostName: aHostString port: anInteger).
	^self accessor: newSocket!

serverOnIP: anIPString port: anInteger 
	| newSocket |
	newSocket := SpSocket newTCPServerSocket.
	newSocket
		setAddressReuse: true;
		bindSocketAddress: (SpIPAddress hostName: anIPString port: anInteger).
	^self accessor: newSocket! !
!SwazooSocket class categoriesFor: #accessor:!private! !
!SwazooSocket class categoriesFor: #connectedPair!instance creation!public! !
!SwazooSocket class categoriesFor: #connectTo:port:!instance creation!public! !
!SwazooSocket class categoriesFor: #serverOnIP:port:!instance creation!public! !

