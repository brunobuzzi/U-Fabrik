"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Address
	instanceVariableNames: 'title firstName middleName lastName company street city stateProvince postalCode country phones fax emails'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Address guid: (GUID fromString: '{32c6403e-7d55-44a3-bd55-8a3c06055226}')!
Address comment: '"ECML v1.1 definition of address (www.ecml.org)"

Instance Variables:
	city	<Object>	description of city
	company	<Object>	description of company
	country	<Object>	description of country
	emails	<Object>	description of emails
	firstName	<Object>	description of firstName
	lastName	<Object>	description of lastName
	middleName	<Object>	description of middleName
	phones	<Object>	description of phones
	postalCode	<Object>	description of postalCode
	stateProvince	<Object>	description of stateProvince
	street	<Object>	description of street
	title	<Object>	description of title'!
!Address categoriesForClass!Unclassified! !
!Address methodsFor!

city
	city isNil ifTrue: [^''].
	^city!

city: aString
	city := aString.!

company
	company isNil ifTrue: [^''].
	^company!

company: aString
	company := aString.!

country
	country isNil ifTrue: [^''].
	^country!

country: aString
	country := aString.!

email
	self emails size > 0 ifTrue: [^self emails at: 1].
	^' '!

email: aString 
	self emails size > 0 ifTrue: [^self emails at: 1 put: aString].
	^self emails add: aString!

emails
	emails isNil ifTrue: [self initEMails].
	^emails!

fax
	fax isNil ifTrue: [^''].
	^fax!

fax: aString
	fax := aString.!

firstName
	firstName isNil ifTrue: [^''].
	^firstName!

firstName: aString
	firstName := aString.!

initEMails
	emails := OrderedCollection new.!

initPhones
	phones := OrderedCollection new.
	phones add: ''.!

lastName
	lastName isNil ifTrue: [^''].
	^lastName!

lastName: aString
	lastName := aString.!

middleName
	middleName isNil ifTrue: [^''].
	^middleName!

middleName: aString
	middleName := aString.!

migrateToUnicode
	"from iso8859-2"
	"Address allInstances do: [:each | each migrateToUnicode]"
	title notNil ifTrue: [title := title ensureUnicodeSloveneChars].
	firstName notNil ifTrue: [firstName := firstName ensureUnicodeSloveneChars].
	middleName notNil ifTrue: [middleName := middleName ensureUnicodeSloveneChars].
	lastName notNil ifTrue: [lastName := lastName ensureUnicodeSloveneChars].
	company notNil ifTrue: [company := company ensureUnicodeSloveneChars].
	street notNil ifTrue: [street := street ensureUnicodeSloveneChars].
	city notNil ifTrue: [city := city ensureUnicodeSloveneChars].
	country notNil ifTrue: [country := country ensureUnicodeSloveneChars].!

phone
	self phones size > 0 ifTrue: [^self phones first].
	^' '!

phone: aString
	self phones size > 0 ifTrue: [^self phones at: 1 put: aString].
	^self phones add: aString!

phones
	phones isNil ifTrue: [self initPhones].
	^phones!

post
	^self city!

post: anObject
	self city: anObject!

postalCode
	postalCode isNil ifTrue: [^''].
	^postalCode!

postalCode: aString
	postalCode := aString.!

stateProvince
	stateProvince isNil ifTrue: [^''].
	^stateProvince!

stateProvince: aString
	stateProvince := aString.!

street
	street isNil ifTrue: [^''].
	^street!

street: aString
	street := aString.!

title
	title isNil ifTrue: [^''].
	^title!

title: aString
	title := aString.! !
!Address categoriesFor: #city!accessing!public! !
!Address categoriesFor: #city:!accessing!public! !
!Address categoriesFor: #company!accessing!public! !
!Address categoriesFor: #company:!accessing!public! !
!Address categoriesFor: #country!accessing!public! !
!Address categoriesFor: #country:!accessing!public! !
!Address categoriesFor: #email!accessing!public! !
!Address categoriesFor: #email:!accessing!public! !
!Address categoriesFor: #emails!accessing!public! !
!Address categoriesFor: #fax!accessing!public! !
!Address categoriesFor: #fax:!accessing!public! !
!Address categoriesFor: #firstName!accessing!public! !
!Address categoriesFor: #firstName:!accessing!public! !
!Address categoriesFor: #initEMails!initialize - release!public! !
!Address categoriesFor: #initPhones!initialize - release!public! !
!Address categoriesFor: #lastName!accessing!public! !
!Address categoriesFor: #lastName:!accessing!public! !
!Address categoriesFor: #middleName!accessing!public! !
!Address categoriesFor: #middleName:!accessing!public! !
!Address categoriesFor: #migrateToUnicode!private! !
!Address categoriesFor: #phone!accessing!public! !
!Address categoriesFor: #phone:!accessing!public! !
!Address categoriesFor: #phones!accessing!public! !
!Address categoriesFor: #post!accessing!public! !
!Address categoriesFor: #post:!accessing!public! !
!Address categoriesFor: #postalCode!accessing!public! !
!Address categoriesFor: #postalCode:!accessing!public! !
!Address categoriesFor: #stateProvince!accessing!public! !
!Address categoriesFor: #stateProvince:!accessing!public! !
!Address categoriesFor: #street!accessing!public! !
!Address categoriesFor: #street:!accessing!public! !
!Address categoriesFor: #title!accessing!public! !
!Address categoriesFor: #title:!accessing!public! !

!Address class methodsFor!

replicationSpec
	"Gemstone"

	^super replicationSpec, 
		#(	(firstName replicate)
			(lastName replicate)
			(company replicate)
			(street replicate)
			(city replicate)
			(postalCode replicate)
			(country replicate)
			(phones max 4)
			(emails max 4)
		 )! !
!Address class categoriesFor: #replicationSpec!odb specific!public! !

