"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ExternalFile
	instanceVariableNames: 'name document'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalFile guid: (GUID fromString: '{723342c4-200b-47db-9b37-cbc512a2621e}')!
ExternalFile comment: 'Document is an abstract class that wraps OS documents.

instanceVariableNames:

document -- is KindOf: IDispatch, is the wrapper to the outside world
name -document''s name. Ex: ''c:\Developers\Patterns.doc''.'!
!ExternalFile categoriesForClass!Unclassified! !
!ExternalFile methodsFor!

available

	" Answer whether the receiver has a the pointer to the OS  Document "

	^document notNil!

canSave
	" Save the receiver in the HD "

	[self save] on: Error do:[:error | ^false].
	^true!

changeDirectoryTo: aPath

	" Change the receiver's directory to aPath "

	^self subclassResponsibility!

close

"	^self close: false"
	document notNil ifTrue:[document free].!

close: aBoolean

	" Close the document "

	^self free!

closeAndAsk

	" Close the receiver and ask for saving changes "

	[^self close: self saveChanges] on: Error do:[:error | ^self onError: error].!

closeAndSave
	" Close and Save the receiver "

	[self save.
	document invoke: 'Quit'.] on: Error do:[:e | ].
	document := nil.!

create

	" Create the OS document limked with inst. var name "

	^self subclassResponsibility!

document
	"Private - Answer the value of the receiver's ''document'' instance variable."

	^document!

document: anObject
	"Private - Set the value of the receiver's ''document'' instance variable to the argument, anObject."

	document := anObject!

extension

	^File splitExtensionFrom: name!

extensionControl

	" Controls the wrapper (var. document) extension with name (var. name) extension of the receiver "

	^((File splitExtensionFrom: name) = self extension)
	!

free
	" Free OS document's pointer "

	(document notNil) ifTrue:[document invoke: 'Quit'.].
	document := nil.!

initialize

	super initialize.

	name := ''.!

isOAObject

	^self class isOAObject!

isOpen
	" Answer whether the application of the receiver is Open or not "

	^self subclassResponsibility!

name
	"Private - Answer the value of the receiver's ''name'' instance variable."

	^name!

name: anObject
	"Private - Set the value of the receiver's ''name'' instance variable to the argument, anObject."

	name := anObject!

notOpen
	" Answer whether the application of the receiver is Open or not "

	^self isOpen not!

onError: unError

	" Handle the OS errors "

	self free.
	MessageBox notify: ('The Document can not be Access <', name, '> !!') caption: 'Document Information'.
	^nil
	
!

open

	" Open and answer the receiver "

	^ShellLibrary default shellOpen: name!

save

	" Save the receiver in the HD "

	^self subclassResponsibility!

saveChanges

	" Ask whether the receiver should be save or not "

	^(MessageBox confirm: 'Save Changes ?' caption: 'Document Information')! !
!ExternalFile categoriesFor: #available!public! !
!ExternalFile categoriesFor: #canSave!public! !
!ExternalFile categoriesFor: #changeDirectoryTo:!public! !
!ExternalFile categoriesFor: #close!public! !
!ExternalFile categoriesFor: #close:!public! !
!ExternalFile categoriesFor: #closeAndAsk!public! !
!ExternalFile categoriesFor: #closeAndSave!public! !
!ExternalFile categoriesFor: #create!public! !
!ExternalFile categoriesFor: #document!accessing!private! !
!ExternalFile categoriesFor: #document:!accessing!private! !
!ExternalFile categoriesFor: #extension!public! !
!ExternalFile categoriesFor: #extensionControl!public! !
!ExternalFile categoriesFor: #free!public! !
!ExternalFile categoriesFor: #initialize!public! !
!ExternalFile categoriesFor: #isOAObject!public! !
!ExternalFile categoriesFor: #isOpen!public! !
!ExternalFile categoriesFor: #name!accessing!private! !
!ExternalFile categoriesFor: #name:!accessing!private! !
!ExternalFile categoriesFor: #notOpen!public! !
!ExternalFile categoriesFor: #onError:!exceptions!public! !
!ExternalFile categoriesFor: #open!public! !
!ExternalFile categoriesFor: #save!public! !
!ExternalFile categoriesFor: #saveChanges!public! !

!ExternalFile class methodsFor!

applicationDirectory

	^SessionManager current imageBase!

classFor: anExtension

	" Answer a Class for anExtension "

	(anExtension = 'xls') ifTrue:[^MSExcel].
	(anExtension = 'doc') ifTrue:[^MSWord].
	(anExtension = 'txt') ifTrue:[^MSText].
	(anExtension = 'ppt') ifTrue:[^MSPowerPoint].
!

create: pathFileName
	| document |

	(File exists: pathFileName) ifTrue:[File delete: pathFileName].
	document := super new initialize; name: pathFileName; yourself.
	document extensionControl ifFalse:[^nil].
	document create.
	^document!

extensions

	" Answer aCollection with all extensions supported by the receiver's subclasses "

	| extensions |

	extensions := OrderedCollection new.
	(self allSubclasses select:[:eachSC | (eachSC subclasses isEmpty)]) do:[:each | extensions add: (each perform: #extension)].
	^extensions

!

isOAObject

	^false!

new

	^super new initialize!

new: pathFileName
	" Creates a new instance of the receiver "
	| document |

	document := super new initialize; name: pathFileName; yourself.
	document extensionControl ifFalse:[^nil].
	document create.
	^document.

!

open: pathFileName
	| document |

	(File exists: pathFileName)
	ifTrue:[document := super new initialize; name: pathFileName; yourself.
		document extensionControl ifFalse:[^nil].
		document open.
		document name: pathFileName.
		^document.].
	^nil!

temporaryFilename

	^File temporaryFilename!

tempPath

	^File tempPath!

workingDirectory

	^File workingDirectory! !
!ExternalFile class categoriesFor: #applicationDirectory!public! !
!ExternalFile class categoriesFor: #classFor:!public! !
!ExternalFile class categoriesFor: #create:!public! !
!ExternalFile class categoriesFor: #extensions!public! !
!ExternalFile class categoriesFor: #isOAObject!public! !
!ExternalFile class categoriesFor: #new!public! !
!ExternalFile class categoriesFor: #new:!public! !
!ExternalFile class categoriesFor: #open:!public! !
!ExternalFile class categoriesFor: #temporaryFilename!public! !
!ExternalFile class categoriesFor: #tempPath!public! !
!ExternalFile class categoriesFor: #workingDirectory!public! !

