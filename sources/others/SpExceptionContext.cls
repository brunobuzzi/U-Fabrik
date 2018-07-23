"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SpExceptionContext
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpExceptionContext guid: (GUID fromString: '{81b0403a-1fba-4761-b4bf-8c3d14ca67c3}')!
SpExceptionContext comment: 'Exceptions vary quite a bit between Smalltalk implementaions, despite the presence of the ANSI Smalltalk specification.  This class representss a portable exception context in which a block can be executed, exceptions trapped and handlers defined.'!
!SpExceptionContext categoriesForClass!Unclassified! !
!SpExceptionContext class methodsFor!

brokenPipeException
	"I return the exception that get's thrown when a socket connection gets 
	broken."

	^SocketError!

for: aBlock on: anException do: exceptionBlock
	"^an Object
	I return the result of evaluating aBlock. In VisualWorks and other
	Smalltalks which are ANSI compliant, I delegate to aBlock."

	^aBlock on: anException do: exceptionBlock!

for: aBlock onAnyExceptionDo: exceptionBlock 
	"^an Object 
	I execute aBlock and if there is any exception I evaluate exceptionBlock.  Essentially, I look out for the most abstract kind of exception which , of course, will vary between Smalltalk implementations."

	#eamAdded.
	^aBlock on: self generalException do: exceptionBlock!

generalException
	"I return the exception that is the most general in this dialect."

	#eamAdded.
	^Error! !
!SpExceptionContext class categoriesFor: #brokenPipeException!native exceptions!private! !
!SpExceptionContext class categoriesFor: #for:on:do:!instance creation!public! !
!SpExceptionContext class categoriesFor: #for:onAnyExceptionDo:!instance creation!private! !
!SpExceptionContext class categoriesFor: #generalException!native exceptions!private! !

