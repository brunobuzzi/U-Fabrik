"Filed out from Dolphin Smalltalk 7"!

Object subclass: #URIResolution
	instanceVariableNames: 'position request'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
URIResolution guid: (GUID fromString: '{227bd4c1-e1b7-44de-8432-9dd1c8b8ecea}')!
URIResolution comment: ''!
!URIResolution categoriesForClass!Unclassified! !
!URIResolution methodsFor!

advance
	self position: self position + 1!

atEnd
	^self position = self request uri identifierPath size!

currentIdentifier
	^self currentPath last!

currentPath
	^self request uri identifierPath copyFrom: 1 to: self position!

fullPath
	^self request uri identifierPath!

getAnswerFrom: aResource
	^aResource answerTo: self request!

initializeRequest: aRequest 
	self request: aRequest.
	self request resolution: self.
	self position: 1!

position
	^position!

position: anInteger
	position := anInteger!

request
	^request!

request: aRequest
	request := aRequest!

resolveCompositeResource: aResource 
	(aResource canAnswer and: [aResource match: self currentIdentifier]) 
		ifFalse: [^nil].
	^self visitChildrenOf: aResource advancing: true!

resolveLeafResource: aResource 
	(aResource canAnswer and: [self stringMatch: aResource]) ifFalse: [^nil].
	^self getAnswerFrom: aResource!

resolveServerRoot: aServerRoot 
	^self resolveTransparentComposite: aServerRoot!

resolveSite: aSite 
	(aSite canAnswer and: [self siteMatch: aSite]) ifFalse: [^nil].
	^self visitChildrenOf: aSite advancing: false!

resolveTransparentComposite: aCompositeResource 
	^self visitChildrenOf: aCompositeResource advancing: false!

resourcePath
	^self request uri identifierPath copyFrom: 1 to: self position!

retreat
	self position: self position - 1.
	^nil!

siteMatch: aSite 
	| siteIdentifier hostName |
	hostName := self request headers 
				fieldOfClass: HTTPHostField
				ifPresent: [:field | field hostName]
				ifAbsent: [self request requestLine requestURI hostname].
	siteIdentifier := SiteIdentifier 
				host: (hostName notNil ifTrue: [hostName] ifFalse: [''])
				ip: self request ip
				port: self request port.
	^aSite match: siteIdentifier!

stringMatch: aResource 
	^aResource uriPattern = self currentIdentifier!

tailPath
	| fullPath |
	fullPath := self fullPath.
	^fullPath copyFrom: self position + 1 to: fullPath size!

tailStream
	^ReadStream on: self tailPath!

visitChildrenOf: aResource advancing: aBoolean 
	| response |
	self atEnd & aBoolean ifTrue: [^self getAnswerFrom: aResource].
	aBoolean ifTrue: [self advance].
	aResource children do: 
			[:each | 
			response := self visitResource: each.
			response isNil ifFalse: [^response]].
	^aBoolean ifTrue: [self retreat] ifFalse: [nil]!

visitResource: aResource 
	^aResource helpResolve: self! !
!URIResolution categoriesFor: #advance!private! !
!URIResolution categoriesFor: #atEnd!accessing!public! !
!URIResolution categoriesFor: #currentIdentifier!private! !
!URIResolution categoriesFor: #currentPath!private! !
!URIResolution categoriesFor: #fullPath!accessing!public! !
!URIResolution categoriesFor: #getAnswerFrom:!private! !
!URIResolution categoriesFor: #initializeRequest:!private-initialize!public! !
!URIResolution categoriesFor: #position!accessing!public! !
!URIResolution categoriesFor: #position:!private! !
!URIResolution categoriesFor: #request!accessing!public! !
!URIResolution categoriesFor: #request:!private! !
!URIResolution categoriesFor: #resolveCompositeResource:!public!resolving! !
!URIResolution categoriesFor: #resolveLeafResource:!public!resolving! !
!URIResolution categoriesFor: #resolveServerRoot:!public!resolving! !
!URIResolution categoriesFor: #resolveSite:!public!resolving! !
!URIResolution categoriesFor: #resolveTransparentComposite:!public!resolving! !
!URIResolution categoriesFor: #resourcePath!accessing!public! !
!URIResolution categoriesFor: #retreat!private! !
!URIResolution categoriesFor: #siteMatch:!private! !
!URIResolution categoriesFor: #stringMatch:!private! !
!URIResolution categoriesFor: #tailPath!accessing!public! !
!URIResolution categoriesFor: #tailStream!private! !
!URIResolution categoriesFor: #visitChildrenOf:advancing:!public!resolving! !
!URIResolution categoriesFor: #visitResource:!public!resolving! !

!URIResolution class methodsFor!

resolveRequest: aRequest startingAt: aResource 
	^(self new initializeRequest: aRequest) visitResource: aResource! !
!URIResolution class categoriesFor: #resolveRequest:startingAt:!instance creation!public! !

