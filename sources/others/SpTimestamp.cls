"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SpTimestamp
	instanceVariableNames: 'underlyingTimestamp'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpTimestamp guid: (GUID fromString: '{12bf8fbc-127d-469b-bcca-9214b732537e}')!
SpTimestamp comment: ''!
!SpTimestamp categoriesForClass!Unclassified! !
!SpTimestamp methodsFor!

< aSpTimestamp
	"Answer true if receiver is less than aSpTimestamp."

	#eamAdded.
	^self underlyingTimestamp  < aSpTimestamp underlyingTimestamp!

<= anOSkTimeStamp 
	^self underlyingTimestamp <= anOSkTimeStamp underlyingTimestamp!

= anOSkTimeStamp
^self underlyingTimestamp = anOSkTimeStamp underlyingTimestamp!

> anOSkTimeStamp
^self underlyingTimestamp > anOSkTimeStamp underlyingTimestamp!

>= aSpTimestamp
	"Answer whether receiver is greather or equal than aSpTimestamp."

	#eamAdded.
	^(self < aSpTimestamp) == false!

asNowUTC
	"^self
Cheat for now and assumen that Timestamp>>now is UTC."

	underlyingTimestamp := TimeStamp current.
	^self!

asRFC1123String
	"^a String
	c.f  >>asRFC1123StringOn: "

	#eamAdded.
	^self rfc1123String!

asRFC1123StringOn: targetStream
	"Assumes server's clock is GMT.  Should convert server's clock to GMT if it is not.  Besides that, this whole method is really ugly."

	^self underlyingTimestamp printRFC1123StringOn: targetStream!

asSeconds
	"^an Integer
	I return the timestamp as a number of seconds."
	^self underlyingTimestamp asSeconds!

asSpTimestamp
	^self!

asTime
	^self underlyingTimestamp time!

fromDate: aDate andTime: aTime
	"^self
	Initialize myself on the basis of aDate and aTime."
	underlyingTimestamp := TimeStamp date: aDate time: aTime.
	^self!

fromSeconds: anInteger 
	"^a SpTimestamp
	I return an instance of myself that represents anInteger number of seconds 
	since January 1, 1901 0:00:00.000.  BTW, negative values of anInteger are fine."
	
	underlyingTimestamp := TimeStamp fromSeconds: anInteger.
	^self!

hash
	^self underlyingTimestamp hash!

printString
	^self underlyingTimestamp printString!

rfc1123String
	"Answer a string representing receiver in RFC1123 date and time format.
	E.g. Sun, 06 Nov 1994 08:49:37 GMT . "
	
	#eamAdded.
	^self underlyingTimestamp rfc1123String!

underlyingTimestamp
	^underlyingTimestamp! !
!SpTimestamp categoriesFor: #<!public! !
!SpTimestamp categoriesFor: #<=!comparing!public! !
!SpTimestamp categoriesFor: #=!comparing!public! !
!SpTimestamp categoriesFor: #>!comparing!public! !
!SpTimestamp categoriesFor: #>=!public! !
!SpTimestamp categoriesFor: #asNowUTC!initialize-release!private! !
!SpTimestamp categoriesFor: #asRFC1123String!private!services! !
!SpTimestamp categoriesFor: #asRFC1123StringOn:!public!services! !
!SpTimestamp categoriesFor: #asSeconds!converting!public! !
!SpTimestamp categoriesFor: #asSpTimestamp!converting!public! !
!SpTimestamp categoriesFor: #asTime!converting!public! !
!SpTimestamp categoriesFor: #fromDate:andTime:!initialize-release!public! !
!SpTimestamp categoriesFor: #fromSeconds:!initialize-release!public! !
!SpTimestamp categoriesFor: #hash!comparing!public! !
!SpTimestamp categoriesFor: #printString!private! !
!SpTimestamp categoriesFor: #rfc1123String!public!services! !
!SpTimestamp categoriesFor: #underlyingTimestamp!private! !

!SpTimestamp class methodsFor!

fromDate: aDate andTime: aTime 
	^self new fromDate: aDate andTime: aTime!

fromRFC1123String: aString 
	"Answer an instance of receiver built from aString in RFC1123 Date and time format.
	E.g.: 'Sun, 06 Nov 1994 08:49:37 GMT'"

	| sourceStream dd mmm yyyy time |
	#eamAdded.
	^SpExceptionContext for: 
			[sourceStream := ReadStream on: aString.
			sourceStream upTo: Character space.
			dd := sourceStream upTo: Character space.
			mmm := sourceStream upTo: Character space.
			yyyy := sourceStream upTo: Character space.
			time := sourceStream upTo: Character space.
			self fromDate: (Date 
						newDay: dd asNumber
						monthIndex: (self monthIndexOfRFC1123Month: mmm)
						year: yyyy asNumber)
				andTime: (Time readFrom: (ReadStream on: time))]
		onAnyExceptionDo: 
			[:exception | 
			SpError raiseSignal: 'Error parsing RFC1123 date: ' , aString]!

fromSeconds: anInteger
	"^a SpTimestamp
	I return an instance of myself that represents anInteger number of seconds since..."
	^self new fromSeconds: anInteger!

fromTimeStamp: aTimeStamp
	"^a SpTimestamp, from a Squeak TimeStamp"
	^self fromDate: aTimeStamp date andTime: aTimeStamp time!

monthIndexOfRFC1123Month: aString 
	"Private - Answer the month index for a month name in RFC1123 format (abbreviated).
	I.e. August is 'Aug'."

	#eamAdded.
	^Locale englishUS monthNames at: aString asLowercase!

now
	"^an OSkTimestamp
	I return a new instance of myself which represents the time now in the
	UTC (GMT ish) time zone."

	^self new asNowUTC! !
!SpTimestamp class categoriesFor: #fromDate:andTime:!instance creation!public! !
!SpTimestamp class categoriesFor: #fromRFC1123String:!instance creation!public! !
!SpTimestamp class categoriesFor: #fromSeconds:!instance creation!public! !
!SpTimestamp class categoriesFor: #fromTimeStamp:!instance creation!public! !
!SpTimestamp class categoriesFor: #monthIndexOfRFC1123Month:!private! !
!SpTimestamp class categoriesFor: #now!instance creation!public! !

