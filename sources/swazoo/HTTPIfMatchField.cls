"Filed out from Dolphin Smalltalk 7"!

HTTPMatchField subclass: #HTTPIfMatchField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPIfMatchField guid: (GUID fromString: '{4db43c4d-4e8c-47b4-a3c0-0cc01f88421b}')!
HTTPIfMatchField comment: '
From RFC 2616

14.24 If-Match

   The If-Match request-header field is used with a method to make it
   conditional. A client that has one or more entities previously
   obtained from the resource can verify that one of those entities is
   current by including a list of their associated entity tags in the
   If-Match header field. Entity tags are defined in section 3.11. The
   purpose of this feature is to allow efficient updates of cached
   information with a minimum amount of transaction overhead. It is also
   used, on updating requests, to prevent inadvertent modification of
   the wrong version of a resource. As a special case, the value "*"
   matches any current entity of the resource.

       If-Match = "If-Match" ":" ( "*" | 1#entity-tag )

   If any of the entity tags match the entity tag of the entity that
   would have been returned in the response to a similar GET request
   (without the If-Match header) on that resource, or if "*" is given

   and any current entity exists for that resource, then the server MAY
   perform the requested method as if the If-Match header field did not
   exist.

   A server MUST use the strong comparison function (see section 13.3.3)
   to compare the entity tags in If-Match.

   If none of the entity tags match, or if "*" is given and no current
   entity exists, the server MUST NOT perform the requested method, and
   MUST return a 412 (Precondition Failed) response. This behavior is
   most useful when the client wants to prevent an updating method, such
   as PUT, from modifying a resource that has changed since the client
   last retrieved it.

   If the request would, without the If-Match header field, result in
   anything other than a 2xx or 412 status, then the If-Match header
   MUST be ignored.

   The meaning of "If-Match: *" is that the method SHOULD be performed
   if the representation selected by the origin server (or by a cache,
   possibly using the Vary mechanism, see section 14.44) exists, and
   MUST NOT be performed if the representation does not exist.

   A request intended to update a resource (e.g., a PUT) MAY include an
   If-Match header field to signal that the request method MUST NOT be
   applied if the entity corresponding to the If-Match value (a single
   entity tag) is no longer a representation of that resource. This
   allows the user to indicate that they do not wish the request to be
   successful if the resource has been changed without their knowledge.
   Examples:

       If-Match: "xyzzy"
       If-Match: "xyzzy", "r2d2xxxx", "c3piozzzz"
       If-Match: *

   The result of a request having both an If-Match header field and
   either an If-None-Match or an If-Modified-Since header fields is
   undefined by this specification.

'!
!HTTPIfMatchField categoriesForClass!Unclassified! !
!HTTPIfMatchField methodsFor!

isCacheHitFor: anEntity 
	"^a Boolean
I return true if an anEntity is a cache hit given the conditional I represent. 
anEntity *must* respond to >>entutyTag"

	1 halt.
	^self! !
!HTTPIfMatchField categoriesFor: #isCacheHitFor:!public!testing! !

!HTTPIfMatchField class methodsFor!

fieldName
	^'If-Match'! !
!HTTPIfMatchField class categoriesFor: #fieldName!accessing!public! !

