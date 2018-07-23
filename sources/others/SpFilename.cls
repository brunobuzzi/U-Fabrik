"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SpFilename
	instanceVariableNames: 'filename'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpFilename guid: (GUID fromString: '{5c58af74-114b-4489-b793-88caad265ac5}')!
SpFilename comment: '
A SpFilename represents a file or directory and allows operations like delete, makeDirectory, etc
Part of code is copied with permission from Cincom VisualWorks

Instance Variables
	filename:		<String> name of a file or directory

'!
!SpFilename categoriesForClass!Unclassified! !
!SpFilename methodsFor!

appendStream
	"^a SpFileStream
	I create an append stream on the file I represent."

	^SpFileStream appendingToFilename: self!

asAbsoluteFilename
	"Answer a Filename pointing to the same file using absolute path.
	The method may answer the receiver it it is already absolute."

	^self isAbsolute 
		ifTrue: [self]
		ifFalse: [self class named: (ImageRelativeFileLocator current localFileSpecFor: self asString)]!

asFilename
	^self!

asString
	^self filename!

construct: extraFn
	"Make a new instance, treating the receiver as a directory, and
	the string argument as a file within the pathname."

	^self class named: self filename , self separator asString , extraFn!

contentsOfEntireFile
	| stream |
	[stream := FileStream read: self filename.
	^stream contents]
		ensure: [stream close]
!

createdTimestamp
	"a SpTimestamp
	timestamp of file creation. "

	^SpTimestamp fromTimeStamp: self fileEntry ftCreationTime asSYSTEMTIME asTimeStamp
!

delete
	self isDirectory
		ifTrue: [File deleteDirectory: self path]
		ifFalse: [File delete: self path]!

directory
	"a filename of the directory for this Filename."
	^self class named: self head!

directoryContents

	| contents |
	contents := OrderedCollection new.
	File for: '*.*' in: self head do: [:each | contents add: (self class named: each path)].
	^contents
	!

exists	
	"^a Boolean
	I return true if the file or direcotory I represent actually exists"
	
	^File exists: self path!

extension
	"Answer the receiver's extension if any.  This is the characters from the
	 last occurrence of a period to the end, inclusive. E.g. the extension of
	 'squeak.image' is '.image'. Answer nil if none.  Note that e.g. .login has no
	 extension."

	| string periodIndex |
	string := self tail.
	periodIndex := string lastIndexOf: $..
	^periodIndex > 1 ifTrue: [string copyFrom: periodIndex to: string size]!

fileEntry
	"Private - Answer the WIN32_FIND_DATA."

	| entries |
	entries := File find: self path.
	entries isEmpty ifTrue: [^SpError raiseSignal: 'File not found'].
	^entries first
!

filename
	 "^a String"
	^filename!

fileSize
	
	^self fileEntry fileSize
!

head
	"Answer the directory prefix as a String."

	^File splitPathFrom: self path!

isAbsolute
	"Answer true if this name is absolute (e.g. not relative to the
	'current directory')."

	self asString size = 0 ifTrue: [^false].
	^(self asString at: 1) == self separator!

isDirectory
	
	^self fileEntry isDirectory!

isRelative
	"Answer true if this name must be interpreted relative to some directory."
	^self isAbsolute not!

lastSeparatorIndex
	^self asString lastIndexOf: self separator ifAbsent: [nil]!

makeDirectory
	
	^File createDirectory: self path!

modifiedTimestamp
	"a SpTimestamp
	timestamp of last file modification"

	| ts |
	ts := self fileEntry ftLastWriteTime asSYSTEMTIME asTimeStamp.
	^SpTimestamp
		fromDate: ts date
		andTime: (Time fromSeconds: ts time asSeconds) "Truncation of the millisecond precision"
!

named: aString 
	"^self
	I initialize myself to represent the filename identified by aString."

	filename := aString.
	^self!

path
	"Answer a path String representing the AbsoluteFilename string of the receiver."

	^self asAbsoluteFilename asString!

readStream
	"^a SpFileStream
	I create a read stream on the file I represent."

	^SpFileStream readingFromFilename: self!

separator
	"Answer the platform's filename component separator."

	^File pathDelimiter!

tail
	"Answer the filename suffix as a String."

	^File splitFilenameFrom: self path!

writeStream
	"^a SpFileStream
	I create a write stream on the file I represent."

	^SpFileStream writingToFilename: self! !
!SpFilename categoriesFor: #appendStream!public!services! !
!SpFilename categoriesFor: #asAbsoluteFilename!accessing!public! !
!SpFilename categoriesFor: #asFilename!accessing!public! !
!SpFilename categoriesFor: #asString!accessing!public! !
!SpFilename categoriesFor: #construct:!private! !
!SpFilename categoriesFor: #contentsOfEntireFile!public!services! !
!SpFilename categoriesFor: #createdTimestamp!accessing!public! !
!SpFilename categoriesFor: #delete!public!services! !
!SpFilename categoriesFor: #directory!accessing!public! !
!SpFilename categoriesFor: #directoryContents!public!services! !
!SpFilename categoriesFor: #exists!public!testing! !
!SpFilename categoriesFor: #extension!accessing!public! !
!SpFilename categoriesFor: #fileEntry!accessing!private! !
!SpFilename categoriesFor: #filename!private! !
!SpFilename categoriesFor: #fileSize!accessing!public! !
!SpFilename categoriesFor: #head!accessing!public! !
!SpFilename categoriesFor: #isAbsolute!public!testing! !
!SpFilename categoriesFor: #isDirectory!public!testing! !
!SpFilename categoriesFor: #isRelative!public!testing! !
!SpFilename categoriesFor: #lastSeparatorIndex!private! !
!SpFilename categoriesFor: #makeDirectory!public!services! !
!SpFilename categoriesFor: #modifiedTimestamp!accessing!public! !
!SpFilename categoriesFor: #named:!initialize-release!public! !
!SpFilename categoriesFor: #path!accessing!public! !
!SpFilename categoriesFor: #readStream!public!services! !
!SpFilename categoriesFor: #separator!private! !
!SpFilename categoriesFor: #tail!accessing!public! !
!SpFilename categoriesFor: #writeStream!public!services! !

!SpFilename class methodsFor!

named: aString 
	"^a SpFilename
	I create a new instance of myself to represent the filename identified by aString."

	^self new named: aString! !
!SpFilename class categoriesFor: #named:!instance creation!public! !

