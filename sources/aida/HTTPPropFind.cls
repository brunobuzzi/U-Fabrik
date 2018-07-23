"Filed out from Dolphin Smalltalk 7"!

HTTPRequest subclass: #HTTPPropFind
	instanceVariableNames: 'properties'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPPropFind guid: (GUID fromString: '{03764838-403c-4847-932d-1c72820aed20}')!
HTTPPropFind comment: 'HTTPPropFind 

WebDAV HTTP method for retrieving properties'!
!HTTPPropFind categoriesForClass!Unclassified! !
!HTTPPropFind methodsFor!

areAllPropertiesRequested
	^self properties isNil or: [self properties isEmpty or: [self properties includes: 'allprop']]!

isDepthChildrenToo
	"if this request deals with that resource an its immediate children"
	^(self headerAt: 'Depth' ifAbsent: [^false]) = '1'!

isDepthInfinite
	"if this request deals with that resource an all its progeny"
	^(self headerAt: 'Depth' ifAbsent: [^true]) = 'infinity'!

isDepthOnlyToResource
	"if this request deals with that resource only"
	^(self headerAt: 'Depth' ifAbsent: [^false]) = '0'!

isPropFind
	^true!

properties
	"names of requested properties"
	^properties!

properties: aCollectionOfStrings
	properties := aCollectionOfStrings!

readFrom: aStream 
	super readFrom: aStream.
	self contents notEmpty ifTrue: [self parseXMLContent]! !
!HTTPPropFind categoriesFor: #areAllPropertiesRequested!public!testing! !
!HTTPPropFind categoriesFor: #isDepthChildrenToo!public!testing! !
!HTTPPropFind categoriesFor: #isDepthInfinite!public!testing! !
!HTTPPropFind categoriesFor: #isDepthOnlyToResource!public!testing! !
!HTTPPropFind categoriesFor: #isPropFind!public!testing! !
!HTTPPropFind categoriesFor: #properties!accessing!public! !
!HTTPPropFind categoriesFor: #properties:!private! !
!HTTPPropFind categoriesFor: #readFrom:!public!reading! !

!HTTPPropFind class methodsFor!

methodName
	"HTTP method used for a request"
	^'PROPFIND'! !
!HTTPPropFind class categoriesFor: #methodName!accessing!public! !

