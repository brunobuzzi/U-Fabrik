"Filed out from Dolphin Smalltalk 7"!

Object subclass: #HTTPMessage
	instanceVariableNames: 'task headers'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPMessage guid: (GUID fromString: '{2fffc139-c6d0-4264-bb79-aa45aa1c75e0}')!
HTTPMessage comment: ''!
!HTTPMessage categoriesForClass!Unclassified! !
!HTTPMessage methodsFor!

addInitialHeaders
	"^self 
This is a no-op.  My subclasses may wish to add some initial headers."

	^self!

headers

	headers isNil ifTrue: [self initHeaders].
	^headers!

initHeaders
	headers := HTTPHeaders new.
	self addInitialHeaders.!

task
	"on which task (request/response pair) this message belongs"
	"to get a connection on which this task belongs, use task connection"
	^task!

task: aSwazooTask

	task := aSwazooTask! !
!HTTPMessage categoriesFor: #addInitialHeaders!initialize-release!public! !
!HTTPMessage categoriesFor: #headers!accessing!public! !
!HTTPMessage categoriesFor: #initHeaders!initialize-release!public! !
!HTTPMessage categoriesFor: #task!accessing!public! !
!HTTPMessage categoriesFor: #task:!accessing!public! !

