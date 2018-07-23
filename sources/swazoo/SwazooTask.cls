"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SwazooTask
	instanceVariableNames: 'connection request response'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooTask guid: (GUID fromString: '{d576eba6-63d3-46d6-9f7f-18eb78d9e78f}')!
SwazooTask comment: 'A SwazooTask is simply a request-response pair.  This class just makes the task (ha!!!!) of dealing with requests and responses a bit easier.'!
!SwazooTask categoriesForClass!Unclassified! !
!SwazooTask methodsFor!

connection
	^connection!

connection: aHTTPConnection
	connection := aHTTPConnection!

request
	^request!

request: aHTTPRequest
	request := aHTTPRequest.
	aHTTPRequest task: self.!

response
	^response!

response: aHTTPResponse
	response := aHTTPResponse.
	aHTTPResponse notNil ifTrue: [aHTTPResponse task: self].! !
!SwazooTask categoriesFor: #connection!accessing!public! !
!SwazooTask categoriesFor: #connection:!accessing!public! !
!SwazooTask categoriesFor: #request!accessing!public! !
!SwazooTask categoriesFor: #request:!accessing!public! !
!SwazooTask categoriesFor: #response!accessing!public! !
!SwazooTask categoriesFor: #response:!accessing!public! !

!SwazooTask class methodsFor!

newOn: aHTTPConnection
	^super new connection: aHTTPConnection! !
!SwazooTask class categoriesFor: #newOn:!instance creation!public! !

