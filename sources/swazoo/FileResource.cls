"Filed out from Dolphin Smalltalk 7"!

FileMappingResource subclass: #FileResource
	instanceVariableNames: ''
	classVariableNames: 'ContentTypes'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FileResource guid: (GUID fromString: '{654b7af3-d77d-42bb-999c-b2d8d586dff0}')!
FileResource comment: ''!
!FileResource categoriesForClass!Unclassified! !
!FileResource methodsFor!

contentTypeFor: aString 
	^ContentTypes at: aString ifAbsent: ['application/octet-stream']!

file: aFilename answerTo: aRequest 
	| cacheControl response |
	cacheControl := SwazooCacheControl new request: aRequest
				cacheTarget: aFilename.
	response := cacheControl isNotModified 
				ifTrue: [HTTPResponse notModified]
				ifFalse: 
					[FileResponse ok entity: ((MimeObject new)
								value: aFilename;
								contentType: (self contentTypeFor: aFilename extension))].
	cacheControl addResponseHeaders: response.
	^response! !
!FileResource categoriesFor: #contentTypeFor:!private! !
!FileResource categoriesFor: #file:answerTo:!private! !

!FileResource class methodsFor!

initialize
	"self initialize"

	ContentTypes := (Dictionary new)
				add: '.txt' -> 'text/plain';
				add: '.html' -> 'text/html';
				add: '.htm' -> 'text/html';
				add: '.css' -> 'text/css';
				add: '.png' -> 'image/png';
				add: '.gif' -> 'image/gif';
				add: '.jpg' -> 'image/jpeg';
				add: '.m3u' -> 'audio/mpegurl';
				add: '.ico' -> 'image/x-icon';
				add: '.pdf' -> 'application/pdf';
				yourself! !
!FileResource class categoriesFor: #initialize!class initialization!public! !

