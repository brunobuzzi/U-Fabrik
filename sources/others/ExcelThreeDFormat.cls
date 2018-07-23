"Filed out from Dolphin Smalltalk 7"!

Office_IMsoDispObj subclass: #ExcelThreeDFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelThreeDFormat guid: (IID fromString: '{000C0321-0000-0000-C000-000000000046}')!
ExcelThreeDFormat comment: '<ExcelThreeDFormat> is a wrapper class for the COM interface ''Excel.ThreeDFormat'' generated from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains no documentation for this interface

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(000C0321-0000-0000-C000-000000000046), 
	helpcontext(0x0001d4c0), 
	nonextensible, 
	dual
]
interface ThreeDFormat : _IMsoDispObj
 {
	[id(0x00000001), propget, helpcontext(0x0001d0d9)]
	HRESULT __stdcall Parent(
		[out, retval]IDispatch** Parent);
	[id(0x0000000a), helpcontext(0x0001d0ec)]
	HRESULT __stdcall IncrementRotationX(
		[in]float Increment);
	[id(0x0000000b), helpcontext(0x0001d0ed)]
	HRESULT __stdcall IncrementRotationY(
		[in]float Increment);
	[id(0x0000000c), helpcontext(0x0001d0da)]
	HRESULT __stdcall ResetRotation();
	[id(0x0000000d), helpcontext(0x0001d0db)]
	HRESULT __stdcall SetThreeDFormat(
		[in]MsoPresetThreeDFormat PresetThreeDFormat);
	[id(0x0000000e), helpcontext(0x0001d0dc)]
	HRESULT __stdcall SetExtrusionDirection(
		[in]MsoPresetExtrusionDirection PresetExtrusionDirection);
	[id(0x00000064), propget, helpcontext(0x0001d0dd)]
	HRESULT __stdcall Depth(
		[out, retval]float* Depth);
	[id(0x00000064), propput, helpcontext(0x0001d0dd)]
	HRESULT __stdcall Depth(
		[in]float Depth);
	[id(0x00000065), propget, helpcontext(0x0001d0de)]
	HRESULT __stdcall ExtrusionColor(
		[out, retval]ColorFormat** ExtrusionColor);
	[id(0x00000066), propget, helpcontext(0x0001d0df)]
	HRESULT __stdcall ExtrusionColorType(
		[out, retval]MsoExtrusionColorType* ExtrusionColorType);
	[id(0x00000066), propput, helpcontext(0x0001d0df)]
	HRESULT __stdcall ExtrusionColorType(
		[in]MsoExtrusionColorType ExtrusionColorType);
	[id(0x00000067), propget, helpcontext(0x0001d0e0)]
	HRESULT __stdcall Perspective(
		[out, retval]MsoTriState* Perspective);
	[id(0x00000067), propput, helpcontext(0x0001d0e0)]
	HRESULT __stdcall Perspective(
		[in]MsoTriState Perspective);
	[id(0x00000068), propget, helpcontext(0x0001d0e1)]
	HRESULT __stdcall PresetExtrusionDirection(
		[out, retval]MsoPresetExtrusionDirection* PresetExtrusionDirection);
	[id(0x00000069), propget, helpcontext(0x0001d0e2)]
	HRESULT __stdcall PresetLightingDirection(
		[out, retval]MsoPresetLightingDirection* PresetLightingDirection);
	[id(0x00000069), propput, helpcontext(0x0001d0e2)]
	HRESULT __stdcall PresetLightingDirection(
		[in]MsoPresetLightingDirection PresetLightingDirection);
	[id(0x0000006a), propget, helpcontext(0x0001d0e3)]
	HRESULT __stdcall PresetLightingSoftness(
		[out, retval]MsoPresetLightingSoftness* PresetLightingSoftness);
	[id(0x0000006a), propput, helpcontext(0x0001d0e3)]
	HRESULT __stdcall PresetLightingSoftness(
		[in]MsoPresetLightingSoftness PresetLightingSoftness);
	[id(0x0000006b), propget, helpcontext(0x0001d0e4)]
	HRESULT __stdcall PresetMaterial(
		[out, retval]MsoPresetMaterial* PresetMaterial);
	[id(0x0000006b), propput, helpcontext(0x0001d0e4)]
	HRESULT __stdcall PresetMaterial(
		[in]MsoPresetMaterial PresetMaterial);
	[id(0x0000006c), propget, helpcontext(0x0001d0e5)]
	HRESULT __stdcall PresetThreeDFormat(
		[out, retval]MsoPresetThreeDFormat* PresetThreeDFormat);
	[id(0x0000006d), propget, helpcontext(0x0001d0e6)]
	HRESULT __stdcall RotationX(
		[out, retval]float* RotationX);
	[id(0x0000006d), propput, helpcontext(0x0001d0e6)]
	HRESULT __stdcall RotationX(
		[in]float RotationX);
	[id(0x0000006e), propget, helpcontext(0x0001d0e7)]
	HRESULT __stdcall RotationY(
		[out, retval]float* RotationY);
	[id(0x0000006e), propput, helpcontext(0x0001d0e7)]
	HRESULT __stdcall RotationY(
		[in]float RotationY);
	[id(0x0000006f), propget, helpcontext(0x0001d0e8)]
	HRESULT __stdcall Visible(
		[out, retval]MsoTriState* Visible);
	[id(0x0000006f), propput, helpcontext(0x0001d0e8)]
	HRESULT __stdcall Visible(
		[in]MsoTriState Visible);
	[id(0x0000000f)]
	HRESULT __stdcall SetPresetCamera(
		[in]MsoPresetCamera PresetCamera);
	[id(0x00000010)]
	HRESULT __stdcall IncrementRotationZ(
		[in]float Increment);
	[id(0x00000011)]
	HRESULT __stdcall IncrementRotationHorizontal(
		[in]float Increment);
	[id(0x00000012)]
	HRESULT __stdcall IncrementRotationVertical(
		[in]float Increment);
	[id(0x00000070), propget]
	HRESULT __stdcall PresetLighting(
		[out, retval]MsoLightRigType* PresetLightRigType);
	[id(0x00000070), propput]
	HRESULT __stdcall PresetLighting(
		[in]MsoLightRigType PresetLightRigType);
	[id(0x00000071), propget]
	HRESULT __stdcall Z(
		[out, retval]float* Z);
	[id(0x00000071), propput]
	HRESULT __stdcall Z(
		[in]float Z);
	[id(0x00000072), propget]
	HRESULT __stdcall BevelTopType(
		[out, retval]MsoBevelType* BevelTopType);
	[id(0x00000072), propput]
	HRESULT __stdcall BevelTopType(
		[in]MsoBevelType BevelTopType);
	[id(0x00000073), propget]
	HRESULT __stdcall BevelTopInset(
		[out, retval]float* BevelTopInset);
	[id(0x00000073), propput]
	HRESULT __stdcall BevelTopInset(
		[in]float BevelTopInset);
	[id(0x00000074), propget]
	HRESULT __stdcall BevelTopDepth(
		[out, retval]float* BevelTopDepth);
	[id(0x00000074), propput]
	HRESULT __stdcall BevelTopDepth(
		[in]float BevelTopDepth);
	[id(0x00000075), propget]
	HRESULT __stdcall BevelBottomType(
		[out, retval]MsoBevelType* BevelBottomType);
	[id(0x00000075), propput]
	HRESULT __stdcall BevelBottomType(
		[in]MsoBevelType BevelBottomType);
	[id(0x00000076), propget]
	HRESULT __stdcall BevelBottomInset(
		[out, retval]float* BevelBottomInset);
	[id(0x00000076), propput]
	HRESULT __stdcall BevelBottomInset(
		[in]float BevelBottomInset);
	[id(0x00000077), propget]
	HRESULT __stdcall BevelBottomDepth(
		[out, retval]float* BevelBottomDepth);
	[id(0x00000077), propput]
	HRESULT __stdcall BevelBottomDepth(
		[in]float BevelBottomDepth);
	[id(0x00000078), propget]
	HRESULT __stdcall PresetCamera(
		[out, retval]MsoPresetCamera* PresetCamera);
	[id(0x00000079), propget]
	HRESULT __stdcall RotationZ(
		[out, retval]float* RotationZ);
	[id(0x00000079), propput]
	HRESULT __stdcall RotationZ(
		[in]float RotationZ);
	[id(0x0000007a), propget]
	HRESULT __stdcall ContourWidth(
		[out, retval]float* Width);
	[id(0x0000007a), propput]
	HRESULT __stdcall ContourWidth(
		[in]float Width);
	[id(0x0000007b), propget]
	HRESULT __stdcall ContourColor(
		[out, retval]ColorFormat** ContourColor);
	[id(0x0000007c), propget]
	HRESULT __stdcall FieldOfView(
		[out, retval]float* FOV);
	[id(0x0000007c), propput]
	HRESULT __stdcall FieldOfView(
		[in]float FOV);
	[id(0x0000007d), propget]
	HRESULT __stdcall ProjectText(
		[out, retval]MsoTriState* ProjectText);
	[id(0x0000007d), propput]
	HRESULT __stdcall ProjectText(
		[in]MsoTriState ProjectText);
	[id(0x0000007e), propget]
	HRESULT __stdcall LightAngle(
		[out, retval]float* LightAngle);
	[id(0x0000007e), propput]
	HRESULT __stdcall LightAngle(
		[in]float LightAngle);
};
'!
!ExcelThreeDFormat categoriesForClass!COM-Interfaces!Excel-Interfaces! !
!ExcelThreeDFormat methodsFor!

bevelBottomDepth
	"Answer the <float> value of the 'BevelBottomDepth' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_BevelBottomDepth: answer.
	^answer asObject
!

bevelBottomDepth: bevelBottomDepth
	"Set the 'BevelBottomDepth' property of the receiver to the <float> value of the argument."

	self put_BevelBottomDepth: bevelBottomDepth
!

bevelBottomInset
	"Answer the <float> value of the 'BevelBottomInset' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_BevelBottomInset: answer.
	^answer asObject
!

bevelBottomInset: bevelBottomInset
	"Set the 'BevelBottomInset' property of the receiver to the <float> value of the argument."

	self put_BevelBottomInset: bevelBottomInset
!

bevelBottomType
	"Answer the <sdword> value of the 'BevelBottomType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_BevelBottomType: answer.
	^answer asObject
!

bevelBottomType: bevelBottomType
	"Set the 'BevelBottomType' property of the receiver to the <sdword> value of the argument."

	self put_BevelBottomType: bevelBottomType
!

bevelTopDepth
	"Answer the <float> value of the 'BevelTopDepth' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_BevelTopDepth: answer.
	^answer asObject
!

bevelTopDepth: bevelTopDepth
	"Set the 'BevelTopDepth' property of the receiver to the <float> value of the argument."

	self put_BevelTopDepth: bevelTopDepth
!

bevelTopInset
	"Answer the <float> value of the 'BevelTopInset' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_BevelTopInset: answer.
	^answer asObject
!

bevelTopInset: bevelTopInset
	"Set the 'BevelTopInset' property of the receiver to the <float> value of the argument."

	self put_BevelTopInset: bevelTopInset
!

bevelTopType
	"Answer the <sdword> value of the 'BevelTopType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_BevelTopType: answer.
	^answer asObject
!

bevelTopType: bevelTopType
	"Set the 'BevelTopType' property of the receiver to the <sdword> value of the argument."

	self put_BevelTopType: bevelTopType
!

contourColor
	"Answer the <ExcelColorFormat> value of the 'ContourColor' property of the receiver."

	| answer |
	answer := ExcelColorFormat newPointer.
	self get_ContourColor: answer.
	^answer asObject
!

contourWidth
	"Answer the <float> value of the 'ContourWidth' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_ContourWidth: answer.
	^answer asObject
!

contourWidth: width
	"Set the 'ContourWidth' property of the receiver to the <float> value of the argument."

	self put_ContourWidth: width
!

depth
	"Answer the <float> value of the 'Depth' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Depth: answer.
	^answer asObject
!

depth: depth
	"Set the 'Depth' property of the receiver to the <float> value of the argument."

	self put_Depth: depth
!

extrusionColor
	"Answer the <ExcelColorFormat> value of the 'ExtrusionColor' property of the receiver."

	| answer |
	answer := ExcelColorFormat newPointer.
	self get_ExtrusionColor: answer.
	^answer asObject
!

extrusionColorType
	"Answer the <sdword> value of the 'ExtrusionColorType' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ExtrusionColorType: answer.
	^answer asObject
!

extrusionColorType: extrusionColorType
	"Set the 'ExtrusionColorType' property of the receiver to the <sdword> value of the argument."

	self put_ExtrusionColorType: extrusionColorType
!

fieldOfView
	"Answer the <float> value of the 'FieldOfView' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_FieldOfView: answer.
	^answer asObject
!

fieldOfView: fov
	"Set the 'FieldOfView' property of the receiver to the <float> value of the argument."

	self put_FieldOfView: fov
!

get_BevelBottomDepth: bevelBottomDepth
	"Private - Get the value of the 'BevelBottomDepth' property of the receiver.

		HRESULT __stdcall BevelBottomDepth(
			[out, retval]float* BevelBottomDepth);"

	<virtual stdcall: hresult 55 float*>
	^self invalidCall!

get_BevelBottomInset: bevelBottomInset
	"Private - Get the value of the 'BevelBottomInset' property of the receiver.

		HRESULT __stdcall BevelBottomInset(
			[out, retval]float* BevelBottomInset);"

	<virtual stdcall: hresult 53 float*>
	^self invalidCall!

get_BevelBottomType: bevelBottomType
	"Private - Get the value of the 'BevelBottomType' property of the receiver.

		HRESULT __stdcall BevelBottomType(
			[out, retval]MsoBevelType* BevelBottomType);"

	<virtual stdcall: hresult 51 sdword*>
	^self invalidCall!

get_BevelTopDepth: bevelTopDepth
	"Private - Get the value of the 'BevelTopDepth' property of the receiver.

		HRESULT __stdcall BevelTopDepth(
			[out, retval]float* BevelTopDepth);"

	<virtual stdcall: hresult 49 float*>
	^self invalidCall!

get_BevelTopInset: bevelTopInset
	"Private - Get the value of the 'BevelTopInset' property of the receiver.

		HRESULT __stdcall BevelTopInset(
			[out, retval]float* BevelTopInset);"

	<virtual stdcall: hresult 47 float*>
	^self invalidCall!

get_BevelTopType: bevelTopType
	"Private - Get the value of the 'BevelTopType' property of the receiver.

		HRESULT __stdcall BevelTopType(
			[out, retval]MsoBevelType* BevelTopType);"

	<virtual stdcall: hresult 45 sdword*>
	^self invalidCall!

get_ContourColor: contourColor
	"Private - Get the value of the 'ContourColor' property of the receiver.

		HRESULT __stdcall ContourColor(
			[out, retval]ColorFormat** ContourColor);"

	<virtual stdcall: hresult 62 ExcelColorFormat**>
	^self invalidCall!

get_ContourWidth: width
	"Private - Get the value of the 'ContourWidth' property of the receiver.

		HRESULT __stdcall ContourWidth(
			[out, retval]float* Width);"

	<virtual stdcall: hresult 60 float*>
	^self invalidCall!

get_Depth: depth
	"Private - Get the value of the 'Depth' property of the receiver.

		HRESULT __stdcall Depth(
			[out, retval]float* Depth);"

	<virtual stdcall: hresult 16 float*>
	^self invalidCall!

get_ExtrusionColor: extrusionColor
	"Private - Get the value of the 'ExtrusionColor' property of the receiver.

		HRESULT __stdcall ExtrusionColor(
			[out, retval]ColorFormat** ExtrusionColor);"

	<virtual stdcall: hresult 18 ExcelColorFormat**>
	^self invalidCall!

get_ExtrusionColorType: extrusionColorType
	"Private - Get the value of the 'ExtrusionColorType' property of the receiver.

		HRESULT __stdcall ExtrusionColorType(
			[out, retval]MsoExtrusionColorType* ExtrusionColorType);"

	<virtual stdcall: hresult 19 sdword*>
	^self invalidCall!

get_FieldOfView: fov
	"Private - Get the value of the 'FieldOfView' property of the receiver.

		HRESULT __stdcall FieldOfView(
			[out, retval]float* FOV);"

	<virtual stdcall: hresult 63 float*>
	^self invalidCall!

get_LightAngle: lightAngle
	"Private - Get the value of the 'LightAngle' property of the receiver.

		HRESULT __stdcall LightAngle(
			[out, retval]float* LightAngle);"

	<virtual stdcall: hresult 67 float*>
	^self invalidCall!

get_Parent: parent
	"Private - Get the value of the 'Parent' property of the receiver.

		HRESULT __stdcall Parent(
			[out, retval]IDispatch** Parent);"

	<virtual stdcall: hresult 10 IDispatch**>
	^self invalidCall!

get_Perspective: perspective
	"Private - Get the value of the 'Perspective' property of the receiver.

		HRESULT __stdcall Perspective(
			[out, retval]MsoTriState* Perspective);"

	<virtual stdcall: hresult 21 sdword*>
	^self invalidCall!

get_PresetCamera: presetCamera
	"Private - Get the value of the 'PresetCamera' property of the receiver.

		HRESULT __stdcall PresetCamera(
			[out, retval]MsoPresetCamera* PresetCamera);"

	<virtual stdcall: hresult 57 sdword*>
	^self invalidCall!

get_PresetExtrusionDirection: presetExtrusionDirection
	"Private - Get the value of the 'PresetExtrusionDirection' property of the receiver.

		HRESULT __stdcall PresetExtrusionDirection(
			[out, retval]MsoPresetExtrusionDirection* PresetExtrusionDirection);"

	<virtual stdcall: hresult 23 sdword*>
	^self invalidCall!

get_PresetLighting: presetLightRigType
	"Private - Get the value of the 'PresetLighting' property of the receiver.

		HRESULT __stdcall PresetLighting(
			[out, retval]MsoLightRigType* PresetLightRigType);"

	<virtual stdcall: hresult 41 sdword*>
	^self invalidCall!

get_PresetLightingDirection: presetLightingDirection
	"Private - Get the value of the 'PresetLightingDirection' property of the receiver.

		HRESULT __stdcall PresetLightingDirection(
			[out, retval]MsoPresetLightingDirection* PresetLightingDirection);"

	<virtual stdcall: hresult 24 sdword*>
	^self invalidCall!

get_PresetLightingSoftness: presetLightingSoftness
	"Private - Get the value of the 'PresetLightingSoftness' property of the receiver.

		HRESULT __stdcall PresetLightingSoftness(
			[out, retval]MsoPresetLightingSoftness* PresetLightingSoftness);"

	<virtual stdcall: hresult 26 sdword*>
	^self invalidCall!

get_PresetMaterial: presetMaterial
	"Private - Get the value of the 'PresetMaterial' property of the receiver.

		HRESULT __stdcall PresetMaterial(
			[out, retval]MsoPresetMaterial* PresetMaterial);"

	<virtual stdcall: hresult 28 sdword*>
	^self invalidCall!

get_PresetThreeDFormat: presetThreeDFormat
	"Private - Get the value of the 'PresetThreeDFormat' property of the receiver.

		HRESULT __stdcall PresetThreeDFormat(
			[out, retval]MsoPresetThreeDFormat* PresetThreeDFormat);"

	<virtual stdcall: hresult 30 sdword*>
	^self invalidCall!

get_ProjectText: projectText
	"Private - Get the value of the 'ProjectText' property of the receiver.

		HRESULT __stdcall ProjectText(
			[out, retval]MsoTriState* ProjectText);"

	<virtual stdcall: hresult 65 sdword*>
	^self invalidCall!

get_RotationX: rotationX
	"Private - Get the value of the 'RotationX' property of the receiver.

		HRESULT __stdcall RotationX(
			[out, retval]float* RotationX);"

	<virtual stdcall: hresult 31 float*>
	^self invalidCall!

get_RotationY: rotationY
	"Private - Get the value of the 'RotationY' property of the receiver.

		HRESULT __stdcall RotationY(
			[out, retval]float* RotationY);"

	<virtual stdcall: hresult 33 float*>
	^self invalidCall!

get_RotationZ: rotationZ
	"Private - Get the value of the 'RotationZ' property of the receiver.

		HRESULT __stdcall RotationZ(
			[out, retval]float* RotationZ);"

	<virtual stdcall: hresult 58 float*>
	^self invalidCall!

get_Visible: visible
	"Private - Get the value of the 'Visible' property of the receiver.

		HRESULT __stdcall Visible(
			[out, retval]MsoTriState* Visible);"

	<virtual stdcall: hresult 35 sdword*>
	^self invalidCall!

get_Z: z
	"Private - Get the value of the 'Z' property of the receiver.

		HRESULT __stdcall Z(
			[out, retval]float* Z);"

	<virtual stdcall: hresult 43 float*>
	^self invalidCall!

incrementRotationHorizontal: increment
	"Invoke the IncrementRotationHorizontal() method of the COM object."

	^self IncrementRotationHorizontal: increment
!

IncrementRotationHorizontal: increment
	"Private - Invoke the IncrementRotationHorizontal() method of the COM object.

		HRESULT __stdcall IncrementRotationHorizontal(
			[in]float Increment);"

	<virtual stdcall: hresult 39 float>
	^self invalidCall!

incrementRotationVertical: increment
	"Invoke the IncrementRotationVertical() method of the COM object."

	^self IncrementRotationVertical: increment
!

IncrementRotationVertical: increment
	"Private - Invoke the IncrementRotationVertical() method of the COM object.

		HRESULT __stdcall IncrementRotationVertical(
			[in]float Increment);"

	<virtual stdcall: hresult 40 float>
	^self invalidCall!

incrementRotationX: increment
	"Invoke the IncrementRotationX() method of the COM object."

	^self IncrementRotationX: increment
!

IncrementRotationX: increment
	"Private - Invoke the IncrementRotationX() method of the COM object.

		HRESULT __stdcall IncrementRotationX(
			[in]float Increment);"

	<virtual stdcall: hresult 11 float>
	^self invalidCall!

incrementRotationY: increment
	"Invoke the IncrementRotationY() method of the COM object."

	^self IncrementRotationY: increment
!

IncrementRotationY: increment
	"Private - Invoke the IncrementRotationY() method of the COM object.

		HRESULT __stdcall IncrementRotationY(
			[in]float Increment);"

	<virtual stdcall: hresult 12 float>
	^self invalidCall!

incrementRotationZ: increment
	"Invoke the IncrementRotationZ() method of the COM object."

	^self IncrementRotationZ: increment
!

IncrementRotationZ: increment
	"Private - Invoke the IncrementRotationZ() method of the COM object.

		HRESULT __stdcall IncrementRotationZ(
			[in]float Increment);"

	<virtual stdcall: hresult 38 float>
	^self invalidCall!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

lightAngle
	"Answer the <float> value of the 'LightAngle' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_LightAngle: answer.
	^answer asObject
!

lightAngle: lightAngle
	"Set the 'LightAngle' property of the receiver to the <float> value of the argument."

	self put_LightAngle: lightAngle
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver."

	| answer |
	answer := IDispatch newPointer.
	self get_Parent: answer.
	^answer asObject
!

perspective
	"Answer the <sdword> value of the 'Perspective' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Perspective: answer.
	^answer asObject
!

perspective: perspective
	"Set the 'Perspective' property of the receiver to the <sdword> value of the argument."

	self put_Perspective: perspective
!

presetCamera
	"Answer the <sdword> value of the 'PresetCamera' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetCamera: answer.
	^answer asObject
!

presetExtrusionDirection
	"Answer the <sdword> value of the 'PresetExtrusionDirection' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetExtrusionDirection: answer.
	^answer asObject
!

presetLighting
	"Answer the <sdword> value of the 'PresetLighting' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetLighting: answer.
	^answer asObject
!

presetLighting: presetLightRigType
	"Set the 'PresetLighting' property of the receiver to the <sdword> value of the argument."

	self put_PresetLighting: presetLightRigType
!

presetLightingDirection
	"Answer the <sdword> value of the 'PresetLightingDirection' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetLightingDirection: answer.
	^answer asObject
!

presetLightingDirection: presetLightingDirection
	"Set the 'PresetLightingDirection' property of the receiver to the <sdword> value of the argument."

	self put_PresetLightingDirection: presetLightingDirection
!

presetLightingSoftness
	"Answer the <sdword> value of the 'PresetLightingSoftness' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetLightingSoftness: answer.
	^answer asObject
!

presetLightingSoftness: presetLightingSoftness
	"Set the 'PresetLightingSoftness' property of the receiver to the <sdword> value of the argument."

	self put_PresetLightingSoftness: presetLightingSoftness
!

presetMaterial
	"Answer the <sdword> value of the 'PresetMaterial' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetMaterial: answer.
	^answer asObject
!

presetMaterial: presetMaterial
	"Set the 'PresetMaterial' property of the receiver to the <sdword> value of the argument."

	self put_PresetMaterial: presetMaterial
!

presetThreeDFormat
	"Answer the <sdword> value of the 'PresetThreeDFormat' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_PresetThreeDFormat: answer.
	^answer asObject
!

projectText
	"Answer the <sdword> value of the 'ProjectText' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_ProjectText: answer.
	^answer asObject
!

projectText: projectText
	"Set the 'ProjectText' property of the receiver to the <sdword> value of the argument."

	self put_ProjectText: projectText
!

put_BevelBottomDepth: bevelBottomDepth
	"Private - Set the value of the 'BevelBottomDepth' property of the object wrapped by the 
	 receiver to the <float> argument, bevelBottomDepth.

		HRESULT __stdcall BevelBottomDepth(
			[in]float BevelBottomDepth);"

	<virtual stdcall: hresult 56 float>
	^self invalidCall!

put_BevelBottomInset: bevelBottomInset
	"Private - Set the value of the 'BevelBottomInset' property of the object wrapped by the 
	 receiver to the <float> argument, bevelBottomInset.

		HRESULT __stdcall BevelBottomInset(
			[in]float BevelBottomInset);"

	<virtual stdcall: hresult 54 float>
	^self invalidCall!

put_BevelBottomType: bevelBottomType
	"Private - Set the value of the 'BevelBottomType' property of the object wrapped by the 
	 receiver to the <sdword> argument, bevelBottomType.

		HRESULT __stdcall BevelBottomType(
			[in]MsoBevelType BevelBottomType);"

	<virtual stdcall: hresult 52 sdword>
	^self invalidCall!

put_BevelTopDepth: bevelTopDepth
	"Private - Set the value of the 'BevelTopDepth' property of the object wrapped by the 
	 receiver to the <float> argument, bevelTopDepth.

		HRESULT __stdcall BevelTopDepth(
			[in]float BevelTopDepth);"

	<virtual stdcall: hresult 50 float>
	^self invalidCall!

put_BevelTopInset: bevelTopInset
	"Private - Set the value of the 'BevelTopInset' property of the object wrapped by the 
	 receiver to the <float> argument, bevelTopInset.

		HRESULT __stdcall BevelTopInset(
			[in]float BevelTopInset);"

	<virtual stdcall: hresult 48 float>
	^self invalidCall!

put_BevelTopType: bevelTopType
	"Private - Set the value of the 'BevelTopType' property of the object wrapped by the 
	 receiver to the <sdword> argument, bevelTopType.

		HRESULT __stdcall BevelTopType(
			[in]MsoBevelType BevelTopType);"

	<virtual stdcall: hresult 46 sdword>
	^self invalidCall!

put_ContourWidth: width
	"Private - Set the value of the 'ContourWidth' property of the object wrapped by the 
	 receiver to the <float> argument, width.

		HRESULT __stdcall ContourWidth(
			[in]float Width);"

	<virtual stdcall: hresult 61 float>
	^self invalidCall!

put_Depth: depth
	"Private - Set the value of the 'Depth' property of the object wrapped by the 
	 receiver to the <float> argument, depth.

		HRESULT __stdcall Depth(
			[in]float Depth);"

	<virtual stdcall: hresult 17 float>
	^self invalidCall!

put_ExtrusionColorType: extrusionColorType
	"Private - Set the value of the 'ExtrusionColorType' property of the object wrapped by the 
	 receiver to the <sdword> argument, extrusionColorType.

		HRESULT __stdcall ExtrusionColorType(
			[in]MsoExtrusionColorType ExtrusionColorType);"

	<virtual stdcall: hresult 20 sdword>
	^self invalidCall!

put_FieldOfView: fov
	"Private - Set the value of the 'FieldOfView' property of the object wrapped by the 
	 receiver to the <float> argument, fov.

		HRESULT __stdcall FieldOfView(
			[in]float FOV);"

	<virtual stdcall: hresult 64 float>
	^self invalidCall!

put_LightAngle: lightAngle
	"Private - Set the value of the 'LightAngle' property of the object wrapped by the 
	 receiver to the <float> argument, lightAngle.

		HRESULT __stdcall LightAngle(
			[in]float LightAngle);"

	<virtual stdcall: hresult 68 float>
	^self invalidCall!

put_Perspective: perspective
	"Private - Set the value of the 'Perspective' property of the object wrapped by the 
	 receiver to the <sdword> argument, perspective.

		HRESULT __stdcall Perspective(
			[in]MsoTriState Perspective);"

	<virtual stdcall: hresult 22 sdword>
	^self invalidCall!

put_PresetLighting: presetLightRigType
	"Private - Set the value of the 'PresetLighting' property of the object wrapped by the 
	 receiver to the <sdword> argument, presetLightRigType.

		HRESULT __stdcall PresetLighting(
			[in]MsoLightRigType PresetLightRigType);"

	<virtual stdcall: hresult 42 sdword>
	^self invalidCall!

put_PresetLightingDirection: presetLightingDirection
	"Private - Set the value of the 'PresetLightingDirection' property of the object wrapped by the 
	 receiver to the <sdword> argument, presetLightingDirection.

		HRESULT __stdcall PresetLightingDirection(
			[in]MsoPresetLightingDirection PresetLightingDirection);"

	<virtual stdcall: hresult 25 sdword>
	^self invalidCall!

put_PresetLightingSoftness: presetLightingSoftness
	"Private - Set the value of the 'PresetLightingSoftness' property of the object wrapped by the 
	 receiver to the <sdword> argument, presetLightingSoftness.

		HRESULT __stdcall PresetLightingSoftness(
			[in]MsoPresetLightingSoftness PresetLightingSoftness);"

	<virtual stdcall: hresult 27 sdword>
	^self invalidCall!

put_PresetMaterial: presetMaterial
	"Private - Set the value of the 'PresetMaterial' property of the object wrapped by the 
	 receiver to the <sdword> argument, presetMaterial.

		HRESULT __stdcall PresetMaterial(
			[in]MsoPresetMaterial PresetMaterial);"

	<virtual stdcall: hresult 29 sdword>
	^self invalidCall!

put_ProjectText: projectText
	"Private - Set the value of the 'ProjectText' property of the object wrapped by the 
	 receiver to the <sdword> argument, projectText.

		HRESULT __stdcall ProjectText(
			[in]MsoTriState ProjectText);"

	<virtual stdcall: hresult 66 sdword>
	^self invalidCall!

put_RotationX: rotationX
	"Private - Set the value of the 'RotationX' property of the object wrapped by the 
	 receiver to the <float> argument, rotationX.

		HRESULT __stdcall RotationX(
			[in]float RotationX);"

	<virtual stdcall: hresult 32 float>
	^self invalidCall!

put_RotationY: rotationY
	"Private - Set the value of the 'RotationY' property of the object wrapped by the 
	 receiver to the <float> argument, rotationY.

		HRESULT __stdcall RotationY(
			[in]float RotationY);"

	<virtual stdcall: hresult 34 float>
	^self invalidCall!

put_RotationZ: rotationZ
	"Private - Set the value of the 'RotationZ' property of the object wrapped by the 
	 receiver to the <float> argument, rotationZ.

		HRESULT __stdcall RotationZ(
			[in]float RotationZ);"

	<virtual stdcall: hresult 59 float>
	^self invalidCall!

put_Visible: visible
	"Private - Set the value of the 'Visible' property of the object wrapped by the 
	 receiver to the <sdword> argument, visible.

		HRESULT __stdcall Visible(
			[in]MsoTriState Visible);"

	<virtual stdcall: hresult 36 sdword>
	^self invalidCall!

put_Z: z
	"Private - Set the value of the 'Z' property of the object wrapped by the 
	 receiver to the <float> argument, z.

		HRESULT __stdcall Z(
			[in]float Z);"

	<virtual stdcall: hresult 44 float>
	^self invalidCall!

resetRotation
	"Invoke the ResetRotation() method of the COM object."

	^self ResetRotation
!

ResetRotation
	"Private - Invoke the ResetRotation() method of the COM object.

		HRESULT __stdcall ResetRotation();"

	<virtual stdcall: hresult 13>
	^self invalidCall!

rotationX
	"Answer the <float> value of the 'RotationX' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_RotationX: answer.
	^answer asObject
!

rotationX: rotationX
	"Set the 'RotationX' property of the receiver to the <float> value of the argument."

	self put_RotationX: rotationX
!

rotationY
	"Answer the <float> value of the 'RotationY' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_RotationY: answer.
	^answer asObject
!

rotationY: rotationY
	"Set the 'RotationY' property of the receiver to the <float> value of the argument."

	self put_RotationY: rotationY
!

rotationZ
	"Answer the <float> value of the 'RotationZ' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_RotationZ: answer.
	^answer asObject
!

rotationZ: rotationZ
	"Set the 'RotationZ' property of the receiver to the <float> value of the argument."

	self put_RotationZ: rotationZ
!

setExtrusionDirection: presetExtrusionDirection
	"Invoke the SetExtrusionDirection() method of the COM object."

	^self SetExtrusionDirection: presetExtrusionDirection
!

SetExtrusionDirection: presetExtrusionDirection
	"Private - Invoke the SetExtrusionDirection() method of the COM object.

		HRESULT __stdcall SetExtrusionDirection(
			[in]MsoPresetExtrusionDirection PresetExtrusionDirection);"

	<virtual stdcall: hresult 15 sdword>
	^self invalidCall!

setPresetCamera: presetCamera
	"Invoke the SetPresetCamera() method of the COM object."

	^self SetPresetCamera: presetCamera
!

SetPresetCamera: presetCamera
	"Private - Invoke the SetPresetCamera() method of the COM object.

		HRESULT __stdcall SetPresetCamera(
			[in]MsoPresetCamera PresetCamera);"

	<virtual stdcall: hresult 37 sdword>
	^self invalidCall!

setThreeDFormat: presetThreeDFormat
	"Invoke the SetThreeDFormat() method of the COM object."

	^self SetThreeDFormat: presetThreeDFormat
!

SetThreeDFormat: presetThreeDFormat
	"Private - Invoke the SetThreeDFormat() method of the COM object.

		HRESULT __stdcall SetThreeDFormat(
			[in]MsoPresetThreeDFormat PresetThreeDFormat);"

	<virtual stdcall: hresult 14 sdword>
	^self invalidCall!

visible
	"Answer the <sdword> value of the 'Visible' property of the receiver."

	| answer |
	answer := (SDWORD new).
	self get_Visible: answer.
	^answer asObject
!

visible: visible
	"Set the 'Visible' property of the receiver to the <sdword> value of the argument."

	self put_Visible: visible
!

z
	"Answer the <float> value of the 'Z' property of the receiver."

	| answer |
	answer := (FLOAT new).
	self get_Z: answer.
	^answer asObject
!

z: z
	"Set the 'Z' property of the receiver to the <float> value of the argument."

	self put_Z: z
! !
!ExcelThreeDFormat categoriesFor: #bevelBottomDepth!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #bevelBottomDepth:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #bevelBottomInset!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #bevelBottomInset:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #bevelBottomType!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #bevelBottomType:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #bevelTopDepth!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #bevelTopDepth:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #bevelTopInset!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #bevelTopInset:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #bevelTopType!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #bevelTopType:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #contourColor!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #contourWidth!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #contourWidth:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #depth!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #depth:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #extrusionColor!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #extrusionColorType!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #extrusionColorType:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #fieldOfView!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #fieldOfView:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #get_BevelBottomDepth:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_BevelBottomInset:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_BevelBottomType:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_BevelTopDepth:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_BevelTopInset:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_BevelTopType:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_ContourColor:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_ContourWidth:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_Depth:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_ExtrusionColor:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_ExtrusionColorType:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_FieldOfView:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_LightAngle:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_Parent:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_Perspective:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_PresetCamera:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_PresetExtrusionDirection:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_PresetLighting:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_PresetLightingDirection:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_PresetLightingSoftness:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_PresetMaterial:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_PresetThreeDFormat:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_ProjectText:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_RotationX:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_RotationY:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_RotationZ:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_Visible:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #get_Z:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #incrementRotationHorizontal:!**auto generated**!methods!public! !
!ExcelThreeDFormat categoriesFor: #IncrementRotationHorizontal:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #incrementRotationVertical:!**auto generated**!methods!public! !
!ExcelThreeDFormat categoriesFor: #IncrementRotationVertical:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #incrementRotationX:!**auto generated**!methods!public! !
!ExcelThreeDFormat categoriesFor: #IncrementRotationX:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #incrementRotationY:!**auto generated**!methods!public! !
!ExcelThreeDFormat categoriesFor: #IncrementRotationY:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #incrementRotationZ:!**auto generated**!methods!public! !
!ExcelThreeDFormat categoriesFor: #IncrementRotationZ:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #isExtensible!**auto generated**!public!testing! !
!ExcelThreeDFormat categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelThreeDFormat categoriesFor: #lightAngle!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #lightAngle:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #perspective!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #perspective:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetCamera!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetExtrusionDirection!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetLighting!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetLighting:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetLightingDirection!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetLightingDirection:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetLightingSoftness!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetLightingSoftness:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetMaterial!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetMaterial:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #presetThreeDFormat!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #projectText!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #projectText:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #put_BevelBottomDepth:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_BevelBottomInset:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_BevelBottomType:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_BevelTopDepth:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_BevelTopInset:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_BevelTopType:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_ContourWidth:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_Depth:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_ExtrusionColorType:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_FieldOfView:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_LightAngle:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_Perspective:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_PresetLighting:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_PresetLightingDirection:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_PresetLightingSoftness:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_PresetMaterial:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_ProjectText:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_RotationX:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_RotationY:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_RotationZ:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_Visible:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #put_Z:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #resetRotation!**auto generated**!methods!public! !
!ExcelThreeDFormat categoriesFor: #ResetRotation!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #rotationX!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #rotationX:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #rotationY!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #rotationY:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #rotationZ!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #rotationZ:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #setExtrusionDirection:!**auto generated**!methods!public! !
!ExcelThreeDFormat categoriesFor: #SetExtrusionDirection:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #setPresetCamera:!**auto generated**!methods!public! !
!ExcelThreeDFormat categoriesFor: #SetPresetCamera:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #setThreeDFormat:!**auto generated**!methods!public! !
!ExcelThreeDFormat categoriesFor: #SetThreeDFormat:!**auto generated**!COM Interfaces-ThreeDFormat!private! !
!ExcelThreeDFormat categoriesFor: #visible!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #visible:!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #z!**auto generated**!properties!public! !
!ExcelThreeDFormat categoriesFor: #z:!**auto generated**!properties!public! !

!ExcelThreeDFormat class methodsFor!

defineFunctions
	"Declare the virtual function table for the COM interface 'Excel.ThreeDFormat'
		ExcelThreeDFormat defineTemplate"

	self
		defineFunction: #get_Parent:
			argumentTypes: 'IDispatch**';
		defineFunction: #IncrementRotationX:
			argumentTypes: 'float';
		defineFunction: #IncrementRotationY:
			argumentTypes: 'float';
		defineFunction: #ResetRotation;
		defineFunction: #SetThreeDFormat:
			argumentTypes: 'sdword';
		defineFunction: #SetExtrusionDirection:
			argumentTypes: 'sdword';
		defineFunction: #get_Depth:
			argumentTypes: 'float*';
		defineFunction: #put_Depth:
			argumentTypes: 'float';
		defineFunction: #get_ExtrusionColor:
			argumentTypes: 'ExcelColorFormat**';
		defineFunction: #get_ExtrusionColorType:
			argumentTypes: 'sdword*';
		defineFunction: #put_ExtrusionColorType:
			argumentTypes: 'sdword';
		defineFunction: #get_Perspective:
			argumentTypes: 'sdword*';
		defineFunction: #put_Perspective:
			argumentTypes: 'sdword';
		defineFunction: #get_PresetExtrusionDirection:
			argumentTypes: 'sdword*';
		defineFunction: #get_PresetLightingDirection:
			argumentTypes: 'sdword*';
		defineFunction: #put_PresetLightingDirection:
			argumentTypes: 'sdword';
		defineFunction: #get_PresetLightingSoftness:
			argumentTypes: 'sdword*';
		defineFunction: #put_PresetLightingSoftness:
			argumentTypes: 'sdword';
		defineFunction: #get_PresetMaterial:
			argumentTypes: 'sdword*';
		defineFunction: #put_PresetMaterial:
			argumentTypes: 'sdword';
		defineFunction: #get_PresetThreeDFormat:
			argumentTypes: 'sdword*';
		defineFunction: #get_RotationX:
			argumentTypes: 'float*';
		defineFunction: #put_RotationX:
			argumentTypes: 'float';
		defineFunction: #get_RotationY:
			argumentTypes: 'float*';
		defineFunction: #put_RotationY:
			argumentTypes: 'float';
		defineFunction: #get_Visible:
			argumentTypes: 'sdword*';
		defineFunction: #put_Visible:
			argumentTypes: 'sdword';
		defineFunction: #SetPresetCamera:
			argumentTypes: 'sdword';
		defineFunction: #IncrementRotationZ:
			argumentTypes: 'float';
		defineFunction: #IncrementRotationHorizontal:
			argumentTypes: 'float';
		defineFunction: #IncrementRotationVertical:
			argumentTypes: 'float';
		defineFunction: #get_PresetLighting:
			argumentTypes: 'sdword*';
		defineFunction: #put_PresetLighting:
			argumentTypes: 'sdword';
		defineFunction: #get_Z:
			argumentTypes: 'float*';
		defineFunction: #put_Z:
			argumentTypes: 'float';
		defineFunction: #get_BevelTopType:
			argumentTypes: 'sdword*';
		defineFunction: #put_BevelTopType:
			argumentTypes: 'sdword';
		defineFunction: #get_BevelTopInset:
			argumentTypes: 'float*';
		defineFunction: #put_BevelTopInset:
			argumentTypes: 'float';
		defineFunction: #get_BevelTopDepth:
			argumentTypes: 'float*';
		defineFunction: #put_BevelTopDepth:
			argumentTypes: 'float';
		defineFunction: #get_BevelBottomType:
			argumentTypes: 'sdword*';
		defineFunction: #put_BevelBottomType:
			argumentTypes: 'sdword';
		defineFunction: #get_BevelBottomInset:
			argumentTypes: 'float*';
		defineFunction: #put_BevelBottomInset:
			argumentTypes: 'float';
		defineFunction: #get_BevelBottomDepth:
			argumentTypes: 'float*';
		defineFunction: #put_BevelBottomDepth:
			argumentTypes: 'float';
		defineFunction: #get_PresetCamera:
			argumentTypes: 'sdword*';
		defineFunction: #get_RotationZ:
			argumentTypes: 'float*';
		defineFunction: #put_RotationZ:
			argumentTypes: 'float';
		defineFunction: #get_ContourWidth:
			argumentTypes: 'float*';
		defineFunction: #put_ContourWidth:
			argumentTypes: 'float';
		defineFunction: #get_ContourColor:
			argumentTypes: 'ExcelColorFormat**';
		defineFunction: #get_FieldOfView:
			argumentTypes: 'float*';
		defineFunction: #put_FieldOfView:
			argumentTypes: 'float';
		defineFunction: #get_ProjectText:
			argumentTypes: 'sdword*';
		defineFunction: #put_ProjectText:
			argumentTypes: 'sdword';
		defineFunction: #get_LightAngle:
			argumentTypes: 'float*';
		defineFunction: #put_LightAngle:
			argumentTypes: 'float'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelThreeDFormat initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelThreeDFormat class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!ExcelThreeDFormat class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

