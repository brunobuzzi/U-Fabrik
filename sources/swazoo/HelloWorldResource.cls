"Filed out from Dolphin Smalltalk 7"!

SwazooResource subclass: #HelloWorldResource
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HelloWorldResource guid: (GUID fromString: '{358f7dc3-72d5-45f8-9f29-f29277992e03}')!
HelloWorldResource comment: ''!
!HelloWorldResource categoriesForClass!Unclassified! !
!HelloWorldResource methodsFor!

answerTo: aRequest 
	| response |
	response := HTTPResponse ok.
	response
		contentType: 'text/html';
		entity: '<html><head><title>Hello World</title></head><body>Hello World!!</body></html>'.
	^response! !
!HelloWorldResource categoriesFor: #answerTo:!public!serving! !

