"Filed out from Dolphin Smalltalk 7"!

SwazooResource subclass: #FileMappingResource
	instanceVariableNames: 'directoryIndex filePath'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FileMappingResource guid: (GUID fromString: '{549ff9c1-5403-4046-964a-ae80aaff3c3b}')!
FileMappingResource comment: ''!
!FileMappingResource categoriesForClass!Unclassified! !
!FileMappingResource methodsFor!

answerTo: aRequest 
	(self checkExistence: aRequest) ifFalse: [^nil].
	(self checkURI: aRequest) 
		ifFalse: 
			[| response |
			response := HTTPResponse movedPermanently.
			response headers 
				addField: (HTTPLocationField new uriString: aRequest uri identifier , '/').
			^response].
	^self file: (self fileFor: aRequest) answerTo: aRequest!

checkExistence: aRequest 
	(self rootFileFor: aRequest) exists ifFalse: [^false].
	^(self fileFor: aRequest) exists!

checkURI: aRequest 
	| needsFinalSlash |
	needsFinalSlash := (self rootFileFor: aRequest) isDirectory 
				and: [aRequest uri isDirectory not].
	^needsFinalSlash not!

directoryIndex
	^directoryIndex!

directoryIndex: aString 
	directoryIndex := aString!

file: aFilename answerTo: aRequest 
	^self subclassResponsibility!

fileDirectory
	^SpFilename named: self filePath!

fileFor: aRequest 
	| fn |
	fn := self rootFileFor: aRequest.
	fn isDirectory ifTrue: [fn := fn construct: self directoryIndex].
	^fn!

filePath
	^filePath!

filePath: aString 
	filePath := aString!

initialize
	super initialize.
	self directoryIndex: 'index.html'!

rootFileFor: aRequest 
	^aRequest tailPath inject: self fileDirectory
		into: 
			[:subPath :each | 
			(#('.' '..') includes: (HTTPString trimBlanksFrom: each)) 
				ifTrue: [subPath]
				ifFalse: [subPath construct: each]]! !
!FileMappingResource categoriesFor: #answerTo:!public!serving! !
!FileMappingResource categoriesFor: #checkExistence:!private! !
!FileMappingResource categoriesFor: #checkURI:!private! !
!FileMappingResource categoriesFor: #directoryIndex!accessing!public! !
!FileMappingResource categoriesFor: #directoryIndex:!accessing!public! !
!FileMappingResource categoriesFor: #file:answerTo:!private! !
!FileMappingResource categoriesFor: #fileDirectory!private! !
!FileMappingResource categoriesFor: #fileFor:!private! !
!FileMappingResource categoriesFor: #filePath!accessing!public! !
!FileMappingResource categoriesFor: #filePath:!accessing!public! !
!FileMappingResource categoriesFor: #initialize!private-initialize!public! !
!FileMappingResource categoriesFor: #rootFileFor:!private! !

!FileMappingResource class methodsFor!

uriPattern: aString filePath: aFilePath 
	^(self uriPattern: aString) filePath: aFilePath!

uriPattern: aString filePath: aFilePath directoryIndex: anotherString 
	^(self uriPattern: aString)
		filePath: aFilePath;
		directoryIndex: anotherString! !
!FileMappingResource class categoriesFor: #uriPattern:filePath:!instance creation!public! !
!FileMappingResource class categoriesFor: #uriPattern:filePath:directoryIndex:!instance creation!public! !

