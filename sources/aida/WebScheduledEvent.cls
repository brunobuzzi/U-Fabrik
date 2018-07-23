"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebScheduledEvent
	instanceVariableNames: 'parent timestamp period method object block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebScheduledEvent guid: (GUID fromString: '{19aea3ee-a814-44d4-a79d-b0739577cb41}')!
WebScheduledEvent comment: ''!
!WebScheduledEvent categoriesForClass!Unclassified! !
!WebScheduledEvent methodsFor!

aidaDeepCopyNotIn: aDictionary
	^nil!

at: aTimestamp runBlock: aBlockClosure
	self timestamp: aTimestamp.
	self block: aBlockClosure.
	self setPeriodSingle!

block
	"a block to be run at event"
	^block!

block: anObject
	block := anObject!

isDayPeriod
	^self period notNil and: [self period key = #day]!

isHourPeriod
	^self period notNil and: [self period key = #hour]!

isMinutePeriod
	^self period notNil and: [self period key = #minute]!

isPeriodic
	^(self period isNil or: [self period key = #single]) not!

method
	"a method to be called on an object at a scheduled time"
	^method!

method: aSymbol
	"a method to be called on an object at a scheduled time"
	method := aSymbol!

object
	"object on which a method wil be called at scheduled time"
	^object!

object: anObject
	object := anObject!

parent
	^parent!

parent: anObject
	parent := anObject!

period
	"asociation with type and parameter: #single>nil #day>aTime, ... "
	^period!

periodType: aSymbol value: anObject
	period := Association key: aSymbol value: anObject!

printString
	^'aScheduledEvent 
	timestamp: ', self timestamp printSloString, ':', self timestamp second printString, '
	period: ', self period key printString, ' ', self period value printString, '
	method: ', self method printString, '
	object: ', self object printString, '
	block: ', self block printString!

representBinaryOn: binWriter
	"for BOSS out. Blocks are not BOSSed out correctly, therefore we cannot export evens that way!!"
	"TEMPORARY, find a better solution!!"
	^0!

run
	"run this event"
	self block notNil 
		ifTrue: [ [self block value] forkAt: self runPriority]
		ifFalse: [ [self object perform: self method] forkAt: self runPriority].
	self isPeriodic ifTrue: [self reschedule]!

runPriority
	^Processor userBackgroundPriority!

setPeriodSingle
	self periodType: #single value: nil!

timestamp
	"when this event must occur"
	^timestamp!

timestamp: aTimestamp
	timestamp := aTimestamp! !
!WebScheduledEvent categoriesFor: #aidaDeepCopyNotIn:!private! !
!WebScheduledEvent categoriesFor: #at:runBlock:!public!setup! !
!WebScheduledEvent categoriesFor: #block!accessing!public! !
!WebScheduledEvent categoriesFor: #block:!private! !
!WebScheduledEvent categoriesFor: #isDayPeriod!public!testing! !
!WebScheduledEvent categoriesFor: #isHourPeriod!public!testing! !
!WebScheduledEvent categoriesFor: #isMinutePeriod!public!testing! !
!WebScheduledEvent categoriesFor: #isPeriodic!public!testing! !
!WebScheduledEvent categoriesFor: #method!accessing!public! !
!WebScheduledEvent categoriesFor: #method:!private! !
!WebScheduledEvent categoriesFor: #object!accessing!public! !
!WebScheduledEvent categoriesFor: #object:!private! !
!WebScheduledEvent categoriesFor: #parent!accessing!public! !
!WebScheduledEvent categoriesFor: #parent:!private! !
!WebScheduledEvent categoriesFor: #period!private-periods!public! !
!WebScheduledEvent categoriesFor: #periodType:value:!private-periods!public! !
!WebScheduledEvent categoriesFor: #printString!private! !
!WebScheduledEvent categoriesFor: #representBinaryOn:!private! !
!WebScheduledEvent categoriesFor: #run!public!running! !
!WebScheduledEvent categoriesFor: #runPriority!public!running! !
!WebScheduledEvent categoriesFor: #setPeriodSingle!private-periods!public! !
!WebScheduledEvent categoriesFor: #timestamp!accessing!public! !
!WebScheduledEvent categoriesFor: #timestamp:!private! !

!WebScheduledEvent class methodsFor!

newOn: aScheduler
	^super new parent: aScheduler! !
!WebScheduledEvent class categoriesFor: #newOn:!instance creation!public! !

