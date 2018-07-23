"Filed out from Dolphin Smalltalk 7"!

HTTPMatchField subclass: #HTTPIfNoneMatchField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPIfNoneMatchField guid: (GUID fromString: '{88c1284d-4c6a-4ebf-b79c-ffc373c888ff}')!
HTTPIfNoneMatchField comment: '
This is a confitional header field.  The HTTP client is asking for a resource on the basis of this condition.  So, we need to have first found the resource, and then we can considder the condition, as follows ...

From RFC 2616:

14.26 If-None-Match

   The If-None-Match request-header field is used with a method to make
   it conditional. A client that has one or more entities previously
   obtained from the resource can verify that none of those entities is
   current by including a list of their associated entity tags in the
   If-None-Match header field. The purpose of this feature is to allow
   efficient updates of cached information with a minimum amount of
   transaction overhead. It is also used to prevent a method (e.g. PUT)
   from inadvertently modifying an existing resource when the client
   believes that the resource does not exist.

   As a special case, the value "*" matches any current entity of the
   resource.

       If-None-Match = "If-None-Match" ":" ( "*" | 1#entity-tag )

   If any of the entity tags match the entity tag of the entity that
   would have been returned in the response to a similar GET request
   (without the If-None-Match header) on that resource, or if "*" is
   given and any current entity exists for that resource, then the
   server MUST NOT perform the requested method, unless required to do
   so because the resource''s modification date fails to match that
   supplied in an If-Modified-Since header field in the request.
   Instead, if the request method was GET or HEAD, the server SHOULD
   respond with a 304 (Not Modified) response, including the cache-
   related header fields (particularly ETag) of one of the entities that
   matched. For all other request methods, the server MUST respond with
   a status of 412 (Precondition Failed).

   See section 13.3.3 for rules on how to determine if two entities tags
   match. The weak comparison function can only be used with GET or HEAD
   requests.

   If none of the entity tags match, then the server MAY perform the
   requested method as if the If-None-Match header field did not exist,
   but MUST also ignore any If-Modified-Since header field(s) in the
   request. That is, if no entity tags match, then the server MUST NOT
   return a 304 (Not Modified) response.

   If the request would, without the If-None-Match header field, result
   in anything other than a 2xx or 304 status, then the If-None-Match
   header MUST be ignored. (See section 13.3.4 for a discussion of
   server behavior when both If-Modified-Since and If-None-Match appear
   in the same request.)

   The meaning of "If-None-Match: *" is that the method MUST NOT be
   performed if the representation selected by the origin server (or by
   a cache, possibly using the Vary mechanism, see section 14.44)
   exists, and SHOULD be performed if the representation does not exist.
   This feature is intended to be useful in preventing races between PUT
   operations.

   Examples:

       If-None-Match: "xyzzy"
       If-None-Match: W/"xyzzy"
       If-None-Match: "xyzzy", "r2d2xxxx", "c3piozzzz"
       If-None-Match: W/"xyzzy", W/"r2d2xxxx", W/"c3piozzzz"
       If-None-Match: *

   The result of a request having both an If-None-Match header field and
   either an If-Match or an If-Unmodified-Since header fields is
   undefined by this specification.'!
!HTTPIfNoneMatchField categoriesForClass!Unclassified! !
!HTTPIfNoneMatchField methodsFor!

isCacheHitFor: anEntity 
	"^a Boolean
I return true if an anEntity is a cache hit given the conditional I represent.  So in my case, I'm looking to see that the entity has a tag which is in my collection of entityTags.
anEntity *must* respond to >>entityTag"

	^self entityTags includes: anEntity entityTag! !
!HTTPIfNoneMatchField categoriesFor: #isCacheHitFor:!public!testing! !

!HTTPIfNoneMatchField class methodsFor!

fieldName
	^'If-None-Match'! !
!HTTPIfNoneMatchField class categoriesFor: #fieldName!accessing!public! !

