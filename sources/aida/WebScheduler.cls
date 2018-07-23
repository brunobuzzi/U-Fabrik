"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebScheduler
	instanceVariableNames: 'site queue loop lock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebScheduler guid: (GUID fromString: '{e4412a3a-11b0-431c-b179-010e11f39a8d}')!
WebScheduler comment: 'WebScheduler is a service for running scheduled events. Events can be single or periodic (daily, hourly, ...).
When event is triggered, its block is executed in a separate low priority process. WebScheduler time resolution is 1 second. 

Example of periodic event:
	self site scheduler everyHourAt: 30 "minutes" runBlock: [Trascript show: ''half a hour!!].

Instance Variables:
	site		<anAIDASite>	
	queue	<OrderedCollection>	queue of events, waiting for execution
	loop	<Process>		loop process, every second looks into queue to run an event
	lock		<RecursionLock> to protect queue operations'!
!WebScheduler categoriesForClass!Unclassified! !
!WebScheduler methodsFor!

at: aTimestamp callMethod: aSymbol of: anObject
	| event |
	event := WebScheduledEvent newOn: self.
	event at: aTimestamp callMethod: aSymbol of: anObject.
	self scheduleEvent: event.
	^event!

at: aTimestamp runBlock: aBlock
	| event |
	event := WebScheduledEvent newOn: self.
	event at: aTimestamp runBlock: aBlock.
	self scheduleEvent: event.
	^event!

considerMissedEvents
	"events which we miss to run, eg. if scheduler didn't run for a while"
	self removeMissedEvents "and nothing more, for now"!

everyDayAt: aTimeOrHour runBlock: aBlock
	| event |
	event := WebScheduledEvent newOn: self.
	event everyDayAt: aTimeOrHour runBlock: aBlock.
	self scheduleEvent: event.
	^event!

everyHourAt: aMinuteNumber  runBlock: aBlock
	| event |
	event := WebScheduledEvent newOn: self.
	event everyHourAt: aMinuteNumber  runBlock: aBlock.
	self scheduleEvent: event.
	^event!

everyMinuteAt: aSecondNumber callMethod: aSymbol of: anObject
	| event |
	event := WebScheduledEvent newOn: self.
	event everyMinuteAt: aSecondNumber callMethod: aSymbol of: anObject.
	self scheduleEvent: event.
	^event!

everyMinuteAt: aSecondNumber  runBlock: aBlock
	| event |
	event := WebScheduledEvent newOn: self.
	event everyMinuteAt: aSecondNumber  runBlock: aBlock.
	self scheduleEvent: event.
	^event!

everyMonthday: aDayNumber at: aTime  runBlock: aBlock!

everyWeekday: aDaySymbol at: aTime  runBlock: aBlock!

initialize!

initQueue
	queue := OrderedCollection new.!

insertToQueueEvent: aScheduledEvent
	self lock critical:
		[self queue isEmpty ifTrue: [^self queue add: aScheduledEvent].
		aScheduledEvent timestamp >= self queue last timestamp 
			ifTrue: [^self queue add: aScheduledEvent].
		aScheduledEvent timestamp < self queue first timestamp 
			ifTrue: [^self queue addFirst: aScheduledEvent].
		self queue size to: 1 by: -1 do: [:inx |
			aScheduledEvent timestamp >= (queue at: inx) timestamp ifTrue: 
				[^self queue add: aScheduledEvent beforeIndex: inx+1] ]
		]!

isLoopRunning
	^self loop notNil!

loop
	^loop!

loop: aProcess
	loop := aProcess!

printString
	^'aScheduler on site: ', (self site notNil ifTrue: [self site name] ifFalse: [''])!

queue
	"queue of events next one to run on first place"
	queue isNil ifTrue: [self initQueue].
	^queue!

scheduleEvent: aScheduledEvent
	self insertToQueueEvent: aScheduledEvent.!

schedulerPriority
	^Processor userInterruptPriority!

site
	^site!

site: anAIDASite
	site := anAIDASite!

start
	self considerMissedEvents.
	self startLoop!

stop
	self stopLoop!

stopLoop
	self loop notNil ifTrue: [self loop terminate. self loop: nil].! !
!WebScheduler categoriesFor: #at:callMethod:of:!events-single!public! !
!WebScheduler categoriesFor: #at:runBlock:!events-single!public! !
!WebScheduler categoriesFor: #considerMissedEvents!private! !
!WebScheduler categoriesFor: #everyDayAt:runBlock:!events-periodic!public! !
!WebScheduler categoriesFor: #everyHourAt:runBlock:!events-periodic!public! !
!WebScheduler categoriesFor: #everyMinuteAt:callMethod:of:!events-periodic!public! !
!WebScheduler categoriesFor: #everyMinuteAt:runBlock:!events-periodic!public! !
!WebScheduler categoriesFor: #everyMonthday:at:runBlock:!events-periodic!public! !
!WebScheduler categoriesFor: #everyWeekday:at:runBlock:!events-periodic!public! !
!WebScheduler categoriesFor: #initialize!initialize-release!public! !
!WebScheduler categoriesFor: #initQueue!initialize-release!public! !
!WebScheduler categoriesFor: #insertToQueueEvent:!private! !
!WebScheduler categoriesFor: #isLoopRunning!private! !
!WebScheduler categoriesFor: #loop!private! !
!WebScheduler categoriesFor: #loop:!private! !
!WebScheduler categoriesFor: #printString!private! !
!WebScheduler categoriesFor: #queue!private! !
!WebScheduler categoriesFor: #scheduleEvent:!private! !
!WebScheduler categoriesFor: #schedulerPriority!private! !
!WebScheduler categoriesFor: #site!private! !
!WebScheduler categoriesFor: #site:!private! !
!WebScheduler categoriesFor: #start!public!start/stop! !
!WebScheduler categoriesFor: #stop!public!start/stop! !
!WebScheduler categoriesFor: #stopLoop!private! !

!WebScheduler class methodsFor!

newOn: anAIDASite
	^super new initialize; site: anAIDASite! !
!WebScheduler class categoriesFor: #newOn:!instance creation!public! !

