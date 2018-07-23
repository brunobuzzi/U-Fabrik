"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SpSocketAddress
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpSocketAddress guid: (GUID fromString: '{6837112a-192d-4d57-be2d-0f3b20a93495}')!
SpSocketAddress comment: ''!
!SpSocketAddress categoriesForClass!Unclassified! !
!SpSocketAddress class methodsFor!

on: subjectAddress
	"Well, in the future there may be more than one kind of socket address,
	but for now there is just OSkIPAddress, so I return one of those on the 
	details embodied in the subjectAddress. 
	No use is made of aSocket as yet, but it will be useful when there
	are more kinds of socket address supported."

	^SpIPAddress host: subjectAddress host port: nil!

on: subjectAddress for: aSocket 
	"^an OSkSocketAddress
	Well, in the future there may be more than one kind of socket address,
	but for now there is just OSkIPAddress, so I return one of those on the 
	details embodied in the subjectAddress. 
	No use is made of aSocket as yet, but it will be useful when there
	are more kinds of socket address supported."

	#eamChanged.
	^SpIPAddress host: subjectAddress ipAddress port: aSocket underlyingSocket port! !
!SpSocketAddress class categoriesFor: #on:!public! !
!SpSocketAddress class categoriesFor: #on:for:!instance creation!private! !

