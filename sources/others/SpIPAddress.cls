"Filed out from Dolphin Smalltalk 7"!

SpSocketAddress subclass: #SpIPAddress
	instanceVariableNames: 'hostAddress portNumber'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpIPAddress guid: (GUID fromString: '{8f8991b8-9dd2-449a-939b-a7776f939192}')!
SpIPAddress comment: ''!
!SpIPAddress categoriesForClass!Unclassified! !
!SpIPAddress methodsFor!

= aSpIPAddress
	"Answer whether receiver is equal to aSpIPAddress."

	#eamAdded.
	^self hostAddress ipAddress = aSpIPAddress hostAddress ipAddress and: [self portNumber = aSpIPAddress portNumber]!

asNativeSocketAddress
	"^an IPSocketAddress
	I return a VisualWorks IPSocketAddress which represents the same IP address I do."

	^Socket2 port: self portNumber address: (InternetAddress ipAddress: self hostAddress) !

hash
	"Answer hash number of receiver."

	#eamAdded.
	^self hostAddress ipAddress hash bitXor: self portNumber !

host: aHostAddress port: aPortNumber 
	hostAddress := aHostAddress.
	portNumber := aPortNumber!

hostAddress
	^ hostAddress!

hostAddressString
	| targetStream |
	targetStream := String new writeStream.

	targetStream
		nextPutAll: (self hostAddress at: 1) printString;
		nextPut: $.;
		nextPutAll: (self hostAddress at: 2) printString;
		nextPut: $.;
		nextPutAll: (self hostAddress at: 3) printString;
		nextPut: $.;
		nextPutAll: (self hostAddress at: 4) printString.
	^targetStream contents!

portNumber
	^ portNumber! !
!SpIPAddress categoriesFor: #=!public! !
!SpIPAddress categoriesFor: #asNativeSocketAddress!private!services - private! !
!SpIPAddress categoriesFor: #hash!public! !
!SpIPAddress categoriesFor: #host:port:!initialize-release!public! !
!SpIPAddress categoriesFor: #hostAddress!accessing!public! !
!SpIPAddress categoriesFor: #hostAddressString!printing!public! !
!SpIPAddress categoriesFor: #portNumber!accessing!public! !

!SpIPAddress class methodsFor!

host: aHostAddress port: aPortNumber
	"^a SpSocketAddress
	I create a new instance of myself which represents an IP address/port
	combination (a TCP/IP address, really). Note that aHostAddress must be a
	four element byte array (e.g. #[127 0 0 1]) ."
	
	^ self new host: aHostAddress port: aPortNumber!

hostName: aHostNameString port: aPortNumber 
	"^an OSkSocketAddress
	I translate aHostNameString to an IP address and then create
	a new instance of myself with >>host:port:"

	^self host: (InternetAddress host: aHostNameString) port: aPortNumber! !
!SpIPAddress class categoriesFor: #host:port:!instance creation!public! !
!SpIPAddress class categoriesFor: #hostName:port:!private!services! !

