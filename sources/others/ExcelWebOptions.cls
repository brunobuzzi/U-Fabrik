"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelWebOptions
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelWebOptions guid: (IID fromString: '{00024449-0000-0000-C000-000000000046}')!
ExcelWebOptions comment: '<ExcelWebOptions> is a wrapper class for the COM interface ''Excel.WebOptions'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(00024449-0000-0000-C000-000000000046), 
	helpcontext(0x000200df), 
	nonextensible, 
	dual
]
interface WebOptions : IDispatch
 {
	[id(0x00000094), propget, helpcontext(0x00010094)]
	HRESULT __stdcall Application(
		[out, retval]Application** RHS);
	[id(0x00000095), propget, helpcontext(0x00010095)]
	HRESULT __stdcall Creator(
		[out, retval]XlCreator* RHS);
	[id(0x00000096), propget, helpcontext(0x00010096)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** RHS);
	[id(0x0000076b), propget, helpcontext(0x0001076b)]
	HRESULT __stdcall RelyOnCSS(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000076b), propput, helpcontext(0x0001076b)]
	HRESULT __stdcall RelyOnCSS(
		[in]VARIANT_BOOL RHS);
	[id(0x0000076e), propget, helpcontext(0x0001076e)]
	HRESULT __stdcall OrganizeInFolder(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x0000076e), propput, helpcontext(0x0001076e)]
	HRESULT __stdcall OrganizeInFolder(
		[in]VARIANT_BOOL RHS);
	[id(0x00000770), propget, helpcontext(0x00010770)]
	HRESULT __stdcall UseLongFileNames(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000770), propput, helpcontext(0x00010770)]
	HRESULT __stdcall UseLongFileNames(
		[in]VARIANT_BOOL RHS);
	[id(0x00000772), propget, helpcontext(0x00010772)]
	HRESULT __stdcall DownloadComponents(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000772), propput, helpcontext(0x00010772)]
	HRESULT __stdcall DownloadComponents(
		[in]VARIANT_BOOL RHS);
	[id(0x00000773), propget, helpcontext(0x00010773)]
	HRESULT __stdcall RelyOnVML(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000773), propput, helpcontext(0x00010773)]
	HRESULT __stdcall RelyOnVML(
		[in]VARIANT_BOOL RHS);
	[id(0x00000774), propget, helpcontext(0x00010774)]
	HRESULT __stdcall AllowPNG(
		[out, retval]VARIANT_BOOL* RHS);
	[id(0x00000774), propput, helpcontext(0x00010774)]
	HRESULT __stdcall AllowPNG(
		[in]VARIANT_BOOL RHS);
	[id(0x00000775), propget, helpcontext(0x00010775)]
	HRESULT __stdcall ScreenSize(
		[out, retval]MsoScreenSize* RHS);
	[id(0x00000775), propput, helpcontext(0x00010775)]
	HRESULT __stdcall ScreenSize(
		[in]MsoScreenSize RHS);
	[id(0x00000776), propget, helpcontext(0x00010776)]
	HRESULT __stdcall PixelsPerInch(
		[out, retval]long* RHS);
	[id(0x00000776), propput, helpcontext(0x00010776)]
	HRESULT __stdcall PixelsPerInch(
		[in]long RHS);
	[id(0x00000777), propget, helpcontext(0x00010777)]
	HRESULT __stdcall LocationOfComponents(
		[out, retval]BSTR* RHS);
	[id(0x00000777), propput, helpcontext(0x00010777)]
	HRESULT __stdcall LocationOfComponents(
		[in]BSTR RHS);
	[id(0x0000071e), propget, helpcontext(0x0001071e)]
	HRESULT __stdcall Encoding(
		[out, retval]MsoEncoding* RHS);
	[id(0x0000071e), propput, helpcontext(0x0001071e)]
	HRESULT __stdcall Encoding(
		[in]MsoEncoding RHS);
	[id(0x0000077a), propget, helpcontext(0x0001077a)]
	HRESULT __stdcall FolderSuffix(
		[out, retval]BSTR* RHS);
	[id(0x0000077b), helpcontext(0x0001077b)]
	HRESULT __stdcall UseDefaultFolderSuffix();
	[id(0x00000883), propget, helpcontext(0x00010883)]
	HRESULT __stdcall TargetBrowser(
		[out, retval]MsoTargetBrowser* RHS);
	[id(0x00000883), propput, helpcontext(0x00010883)]
	HRESULT __stdcall TargetBrowser(
		[in]MsoTargetBrowser RHS);
};
'!
!ExcelWebOptions categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelWebOptions methodsFor!

allowPNG
	"Answer the <varbool> value of the 'AllowPNG' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_AllowPNG: answer.
	^answer asObject
!

allowPNG: rhs
	"Set the 'AllowPNG' property of the receiver to the <varbool> value of the argument."

	self put_AllowPNG: rhs
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver."

	| answer |
	answer := Excel_Application newPointer.
	self get_Application: answer.
	^answer asObject
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Creator: answer.
	^answer asObject
!

downloadComponents
	"Answer the <varbool> value of the 'DownloadComponents' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_DownloadComponents: answer.
	^answer asObject
!

downloadComponents: rhs
	"Set the 'DownloadComponents' property of the receiver to the <varbool> value of the argument."

	self put_DownloadComponents: rhs
!

encoding
	"Answer the <sdword> value of the 'Encoding' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Encoding: answer.
	^answer asObject
!

encoding: rhs
	"Set the 'Encoding' property of the receiver to the <sdword> value of the argument."

	self put_Encoding: rhs
!

folderSuffix
	"Answer the <bstr> value of the 'FolderSuffix' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_FolderSuffix: answer.
	^answer asObject
!

get_AllowPNG: rhs
	"Private - Get the value of the 'AllowPNG' property of the receiver.

		HRESULT __stdcall AllowPNG(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 21 varbool*>
	^self invalidCall!

get_Application: rhs
	"Private - Get the value of the 'Application' property of the receiver.

		HRESULT __stdcall Application(
			[out, retval]Application** RHS);"

	<virtual stdcall: hresult 8 Excel_Application**>
	^self invalidCall!

get_Creator: rhs
	"Private - Get the value of the 'Creator' property of the receiver.

		HRESULT __stdcall Creator(
			[out, retval]XlCreator* RHS);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_DownloadComponents: rhs
	"Private - Get the value of the 'DownloadComponents' property of the receiver.

		HRESULT __stdcall DownloadComponents(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 17 varbool*>
	^self invalidCall!

get_Encoding: rhs
	"Private - Get the value of the 'Encoding' property of the receiver.

		HRESULT __stdcall Encoding(
			[out, retval]MsoEncoding* RHS);"

	<virtual stdcall: hresult 29 sdword*>
	^self invalidCall!

get_FolderSuffix: rhs
	"Private - Get the value of the 'FolderSuffix' property of the receiver.

		HRESULT __stdcall FolderSuffix(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 31 bstr*>
	^self invalidCall!

get_LocationOfComponents: rhs
	"Private - Get the value of the 'LocationOfComponents' property of the receiver.

		HRESULT __stdcall LocationOfComponents(
			[out, retval]BSTR* RHS);"

	<virtual stdcall: hresult 27 bstr*>
	^self invalidCall!

get_OrganizeInFolder: rhs
	"Private - Get the value of the 'OrganizeInFolder' property of the receiver.

		HRESULT __stdcall OrganizeInFolder(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 13 varbool*>
	^self invalidCall!

get_Parent: rhs
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** RHS);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_PixelsPerInch: rhs
	"Private - Get the value of the 'PixelsPerInch' property of the receiver.

		HRESULT __stdcall PixelsPerInch(
			[out, retval]long* RHS);"

	<virtual stdcall: hresult 25 sdword*>
	^self invalidCall!

get_RelyOnCSS: rhs
	"Private - Get the value of the 'RelyOnCSS' property of the receiver.

		HRESULT __stdcall RelyOnCSS(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 11 varbool*>
	^self invalidCall!

get_RelyOnVML: rhs
	"Private - Get the value of the 'RelyOnVML' property of the receiver.

		HRESULT __stdcall RelyOnVML(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 19 varbool*>
	^self invalidCall!

get_ScreenSize: rhs
	"Private - Get the value of the 'ScreenSize' property of the receiver.

		HRESULT __stdcall ScreenSize(
			[out, retval]MsoScreenSize* RHS);"

	<virtual stdcall: hresult 23 sdword*>
	^self invalidCall!

get_TargetBrowser: rhs
	"Private - Get the value of the 'TargetBrowser' property of the receiver.

		HRESULT __stdcall TargetBrowser(
			[out, retval]MsoTargetBrowser* RHS);"

	<virtual stdcall: hresult 33 sdword*>
	^self invalidCall!

get_UseLongFileNames: rhs
	"Private - Get the value of the 'UseLongFileNames' property of the receiver.

		HRESULT __stdcall UseLongFileNames(
			[out, retval]VARIANT_BOOL* RHS);"

	<virtual stdcall: hresult 15 varbool*>
	^self invalidCall!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

locationOfComponents
	"Answer the <bstr> value of the 'LocationOfComponents' property of the receiver."

	| answer |
	answer := BSTR new.
	self get_LocationOfComponents: answer.
	^answer asObject
!

locationOfComponents: rhs
	"Set the 'LocationOfComponents' property of the receiver to the <bstr> value of the argument."

	self put_LocationOfComponents: rhs
!

organizeInFolder
	"Answer the <varbool> value of the 'OrganizeInFolder' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_OrganizeInFolder: answer.
	^answer asObject
!

organizeInFolder: rhs
	"Set the 'OrganizeInFolder' property of the receiver to the <varbool> value of the argument."

	self put_OrganizeInFolder: rhs
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

pixelsPerInch
	"Answer the <sdword> value of the 'PixelsPerInch' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PixelsPerInch: answer.
	^answer asObject
!

pixelsPerInch: rhs
	"Set the 'PixelsPerInch' property of the receiver to the <sdword> value of the argument."

	self put_PixelsPerInch: rhs
!

put_AllowPNG: rhs
	"Private - Set the value of the 'AllowPNG' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall AllowPNG(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 22 varbool>
	^self invalidCall!

put_DownloadComponents: rhs
	"Private - Set the value of the 'DownloadComponents' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall DownloadComponents(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 18 varbool>
	^self invalidCall!

put_Encoding: rhs
	"Private - Set the value of the 'Encoding' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall Encoding(
			[in]MsoEncoding RHS);"

	<virtual stdcall: hresult 30 sdword>
	^self invalidCall!

put_LocationOfComponents: rhs
	"Private - Set the value of the 'LocationOfComponents' property of the object wrapped by the 
	 receiver to the <bstr> argument, rhs.

		HRESULT __stdcall LocationOfComponents(
			[in]BSTR RHS);"

	<virtual stdcall: hresult 28 bstr>
	^self invalidCall!

put_OrganizeInFolder: rhs
	"Private - Set the value of the 'OrganizeInFolder' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall OrganizeInFolder(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 14 varbool>
	^self invalidCall!

put_PixelsPerInch: rhs
	"Private - Set the value of the 'PixelsPerInch' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall PixelsPerInch(
			[in]long RHS);"

	<virtual stdcall: hresult 26 sdword>
	^self invalidCall!

put_RelyOnCSS: rhs
	"Private - Set the value of the 'RelyOnCSS' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall RelyOnCSS(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 12 varbool>
	^self invalidCall!

put_RelyOnVML: rhs
	"Private - Set the value of the 'RelyOnVML' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall RelyOnVML(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 20 varbool>
	^self invalidCall!

put_ScreenSize: rhs
	"Private - Set the value of the 'ScreenSize' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall ScreenSize(
			[in]MsoScreenSize RHS);"

	<virtual stdcall: hresult 24 sdword>
	^self invalidCall!

put_TargetBrowser: rhs
	"Private - Set the value of the 'TargetBrowser' property of the object wrapped by the 
	 receiver to the <sdword> argument, rhs.

		HRESULT __stdcall TargetBrowser(
			[in]MsoTargetBrowser RHS);"

	<virtual stdcall: hresult 34 sdword>
	^self invalidCall!

put_UseLongFileNames: rhs
	"Private - Set the value of the 'UseLongFileNames' property of the object wrapped by the 
	 receiver to the <varbool> argument, rhs.

		HRESULT __stdcall UseLongFileNames(
			[in]VARIANT_BOOL RHS);"

	<virtual stdcall: hresult 16 varbool>
	^self invalidCall!

relyOnCSS
	"Answer the <varbool> value of the 'RelyOnCSS' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_RelyOnCSS: answer.
	^answer asObject
!

relyOnCSS: rhs
	"Set the 'RelyOnCSS' property of the receiver to the <varbool> value of the argument."

	self put_RelyOnCSS: rhs
!

relyOnVML
	"Answer the <varbool> value of the 'RelyOnVML' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_RelyOnVML: answer.
	^answer asObject
!

relyOnVML: rhs
	"Set the 'RelyOnVML' property of the receiver to the <varbool> value of the argument."

	self put_RelyOnVML: rhs
!

screenSize
	"Answer the <sdword> value of the 'ScreenSize' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ScreenSize: answer.
	^answer asObject
!

screenSize: rhs
	"Set the 'ScreenSize' property of the receiver to the <sdword> value of the argument."

	self put_ScreenSize: rhs
!

targetBrowser
	"Answer the <sdword> value of the 'TargetBrowser' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_TargetBrowser: answer.
	^answer asObject
!

targetBrowser: rhs
	"Set the 'TargetBrowser' property of the receiver to the <sdword> value of the argument."

	self put_TargetBrowser: rhs
!

useDefaultFolderSuffix
	"Invoke the UseDefaultFolderSuffix() method of the COM object."

	^self UseDefaultFolderSuffix
!

UseDefaultFolderSuffix
	"Private - Invoke the UseDefaultFolderSuffix() method of the COM object.

		HRESULT __stdcall UseDefaultFolderSuffix();"

	<virtual stdcall: hresult 32>
	^self invalidCall!

useLongFileNames
	"Answer the <varbool> value of the 'UseLongFileNames' property of the receiver."

	| answer |
	answer := (VARIANT_BOOL new).
	self get_UseLongFileNames: answer.
	^answer asObject
!

useLongFileNames: rhs
	"Set the 'UseLongFileNames' property of the receiver to the <varbool> value of the argument."

	self put_UseLongFileNames: rhs
! !
!ExcelWebOptions categoriesFor: #allowPNG!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #allowPNG:!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #application!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #downloadComponents!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #downloadComponents:!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #encoding!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #encoding:!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #folderSuffix!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #get_AllowPNG:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #get_Application:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #get_Creator:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #get_DownloadComponents:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #get_Encoding:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #get_FolderSuffix:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #get_LocationOfComponents:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #get_OrganizeInFolder:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #get_PixelsPerInch:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #get_RelyOnCSS:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #get_RelyOnVML:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #get_ScreenSize:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #get_TargetBrowser:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #get_UseLongFileNames:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelWebOptions categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelWebOptions categoriesFor: #locationOfComponents!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #locationOfComponents:!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #organizeInFolder!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #organizeInFolder:!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #pixelsPerInch!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #pixelsPerInch:!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #put_AllowPNG:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #put_DownloadComponents:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #put_Encoding:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #put_LocationOfComponents:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #put_OrganizeInFolder:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #put_PixelsPerInch:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #put_RelyOnCSS:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #put_RelyOnVML:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #put_ScreenSize:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #put_TargetBrowser:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #put_UseLongFileNames:!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #relyOnCSS!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #relyOnCSS:!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #relyOnVML!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #relyOnVML:!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #screenSize!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #screenSize:!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #targetBrowser!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #targetBrowser:!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #useDefaultFolderSuffix!**auto generated**!methods!public! !
!ExcelWebOptions categoriesFor: #UseDefaultFolderSuffix!**auto generated**!COM Interfaces-WebOptions!private! !
!ExcelWebOptions categoriesFor: #useLongFileNames!**auto generated**!properties!public! !
!ExcelWebOptions categoriesFor: #useLongFileNames:!**auto generated**!properties!public! !

!ExcelWebOptions class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.WebOptions'
		ExcelWebOptions defineTemplate"

	self
		defineFunction: #get_Application:
			argumentTypes: 'Excel_Application**';
		defineFunction: #get_Creator:
			argumentTypes: 'sdword*';
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #get_RelyOnCSS:
			argumentTypes: 'varbool*';
		defineFunction: #put_RelyOnCSS:
			argumentTypes: 'varbool';
		defineFunction: #get_OrganizeInFolder:
			argumentTypes: 'varbool*';
		defineFunction: #put_OrganizeInFolder:
			argumentTypes: 'varbool';
		defineFunction: #get_UseLongFileNames:
			argumentTypes: 'varbool*';
		defineFunction: #put_UseLongFileNames:
			argumentTypes: 'varbool';
		defineFunction: #get_DownloadComponents:
			argumentTypes: 'varbool*';
		defineFunction: #put_DownloadComponents:
			argumentTypes: 'varbool';
		defineFunction: #get_RelyOnVML:
			argumentTypes: 'varbool*';
		defineFunction: #put_RelyOnVML:
			argumentTypes: 'varbool';
		defineFunction: #get_AllowPNG:
			argumentTypes: 'varbool*';
		defineFunction: #put_AllowPNG:
			argumentTypes: 'varbool';
		defineFunction: #get_ScreenSize:
			argumentTypes: 'sdword*';
		defineFunction: #put_ScreenSize:
			argumentTypes: 'sdword';
		defineFunction: #get_PixelsPerInch:
			argumentTypes: 'sdword*';
		defineFunction: #put_PixelsPerInch:
			argumentTypes: 'sdword';
		defineFunction: #get_LocationOfComponents:
			argumentTypes: 'bstr*';
		defineFunction: #put_LocationOfComponents:
			argumentTypes: 'bstr';
		defineFunction: #get_Encoding:
			argumentTypes: 'sdword*';
		defineFunction: #put_Encoding:
			argumentTypes: 'sdword';
		defineFunction: #get_FolderSuffix:
			argumentTypes: 'bstr*';
		defineFunction: #UseDefaultFolderSuffix;
		defineFunction: #get_TargetBrowser:
			argumentTypes: 'sdword*';
		defineFunction: #put_TargetBrowser:
			argumentTypes: 'sdword'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelWebOptions initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelWebOptions class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelWebOptions class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

