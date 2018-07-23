"Filed out from Dolphin Smalltalk 7"!

MSOffice subclass: #MSPowerPoint
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MSPowerPoint guid: (GUID fromString: '{e162f71a-1e82-43b7-87b9-30ff45b0d08d}')!
MSPowerPoint comment: ''!
!MSPowerPoint categoriesForClass!Unclassified! !
!MSPowerPoint methodsFor!

activeDocument

	" Private -  Answer aString that is the property name of an Active Document "

	^'ActivePresentation'
!

applicationName

	" Answer aString that represent the application name for the OS "

	^'PowerPoint.Application'
!

changeDirectory

	" Do nothing "!

changeDirectoryTo: aPath

	" Change the directory of the receiver to aPath "

	document setProperty: 'DefaultFilePath' value: aPath!

extension

	^'ppt'!

isOpen
	" Answer whether the application of the receiver is Open or not "

	^(document getProperty: 'Visible') ~= 0
!

workbooks

	" Answer aString with the property name of MS-Power Point work books "

	^'Presentations'! !
!MSPowerPoint categoriesFor: #activeDocument!public! !
!MSPowerPoint categoriesFor: #applicationName!public! !
!MSPowerPoint categoriesFor: #changeDirectory!public! !
!MSPowerPoint categoriesFor: #changeDirectoryTo:!public! !
!MSPowerPoint categoriesFor: #extension!public! !
!MSPowerPoint categoriesFor: #isOpen!public! !
!MSPowerPoint categoriesFor: #workbooks!public! !

!MSPowerPoint class methodsFor!

create: pathFileName
	| document |

	(File exists: pathFileName) ifTrue:[File delete: pathFileName].
	document := super new initialize; name: pathFileName; yourself.
	document extensionControl ifFalse:[^nil].
	document create.
	^document!

extension

	^'ppt'! !
!MSPowerPoint class categoriesFor: #create:!public! !
!MSPowerPoint class categoriesFor: #extension!public! !

