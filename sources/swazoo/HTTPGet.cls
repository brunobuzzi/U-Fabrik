"Filed out from Dolphin Smalltalk 7"!

HTTPRequest subclass: #HTTPGet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPGet guid: (GUID fromString: '{2e164811-a312-48bc-a133-8c4c9edb84ec}')!
HTTPGet comment: '
HTTPGet 

rfc26216 section 9.3

   The GET method means retrieve whatever information (in the form of an
   entity) is identified by the Request-URI. If the Request-URI refers
   to a data-producing process, it is the produced data which shall be
   returned as the entity in the response and not the source text of the
   process, unless that text happens to be the output of the process.
'!
!HTTPGet categoriesForClass!Unclassified! !
!HTTPGet methodsFor!

isGet
	^true! !
!HTTPGet categoriesFor: #isGet!public!testing! !

!HTTPGet class methodsFor!

methodName
	^'GET'! !
!HTTPGet class categoriesFor: #methodName!accessing!public! !

