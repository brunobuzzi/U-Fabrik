"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelPivotField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelPivotField guid: (IID fromString: '{00020874-0000-0000-C000-000000000046}')!
ExcelPivotField comment: '<ExcelPivotField> is a wrapper class generated for the dispatch interface ''Excel.PivotField'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020874-0000-0000-C000-000000000046), 
	helpcontext(0x00020034)
]
dispinterface PivotField {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x0000013c), propget, helpcontext(0x0001013c)]
		XlPivotFieldCalculation Calculation();
[id(0x0000013c), propput, helpcontext(0x0001013c)]
		void Calculation(
			[in]XlPivotFieldCalculation arg1);
[id(0x000002e0), propget, helpcontext(0x000102e0)]
		PivotField* ChildField();
[id(0x000002da), propget, helpcontext(0x000102da)]
		VARIANT ChildItems(
			[in, optional]VARIANT Index);
[id(0x000002e2), propget, helpcontext(0x000102e2)]
		VARIANT CurrentPage();
[id(0x000002e2), propput, helpcontext(0x000102e2)]
		void CurrentPage(
			[in]VARIANT arg1);
[id(0x000002d0), propget, helpcontext(0x000102d0)]
		Range* DataRange();
[id(0x000002d2), propget, helpcontext(0x000102d2)]
		XlPivotFieldDataType DataType();
[id(0000000000), propget, helpcontext(0x00010000)]
		BSTR _Default();
[id(0000000000), propput, helpcontext(0x00010000)]
		void _Default(
			[in]BSTR arg1);
[id(0x00000383), propget, helpcontext(0x00010383)]
		XlConsolidationFunction Function();
[id(0x00000383), propput, helpcontext(0x00010383)]
		void Function(
			[in]XlConsolidationFunction arg1);
[id(0x000002d3), propget, helpcontext(0x000102d3)]
		VARIANT GroupLevel();
[id(0x000002d8), propget, helpcontext(0x000102d8)]
		VARIANT HiddenItems(
			[in, optional]VARIANT Index);
[id(0x000002cf), propget, helpcontext(0x000102cf)]
		Range* LabelRange();
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		BSTR Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]BSTR arg1);
[id(0x000000c1), propget, helpcontext(0x000100c1)]
		BSTR NumberFormat();
[id(0x000000c1), propput, helpcontext(0x000100c1)]
		void NumberFormat(
			[in]BSTR arg1);
[id(0x00000086), propget, helpcontext(0x00010086)]
		XlPivotFieldOrientation Orientation();
[id(0x00000086), propput, helpcontext(0x00010086)]
		void Orientation(
			[in]XlPivotFieldOrientation arg1);
[id(0x000001c4), propget, helpcontext(0x000101c4)]
		VARIANT_BOOL ShowAllItems();
[id(0x000001c4), propput, helpcontext(0x000101c4)]
		void ShowAllItems(
			[in]VARIANT_BOOL arg1);
[id(0x000002dc), propget, helpcontext(0x000102dc)]
		PivotField* ParentField();
[id(0x000002d9), propget, helpcontext(0x000102d9)]
		VARIANT ParentItems(
			[in, optional]VARIANT Index);
[id(0x000002e1), helpcontext(0x000102e1)]
		VARIANT PivotItems(
			[in, optional]VARIANT Index);
[id(0x00000085), propget, helpcontext(0x00010085)]
		VARIANT Position();
[id(0x00000085), propput, helpcontext(0x00010085)]
		void Position(
			[in]VARIANT arg1);
[id(0x000002d1), propget, helpcontext(0x000102d1)]
		BSTR SourceName();
[id(0x000002dd), propget, helpcontext(0x000102dd)]
		VARIANT Subtotals(
			[in, optional]VARIANT Index);
[id(0x000002dd), propput, helpcontext(0x000102dd)]
		void Subtotals(
			[in, optional]VARIANT Index,
			[in]VARIANT arg2);
[id(0x000002de), propget, helpcontext(0x000102de)]
		VARIANT BaseField();
[id(0x000002de), propput, helpcontext(0x000102de)]
		void BaseField(
			[in]VARIANT arg1);
[id(0x000002df), propget, helpcontext(0x000102df)]
		VARIANT BaseItem();
[id(0x000002df), propput, helpcontext(0x000102df)]
		void BaseItem(
			[in]VARIANT arg1);
[id(0x000002d4), propget, helpcontext(0x000102d4)]
		VARIANT TotalLevels();
[id(0x00000006), propget, helpcontext(0x00010006)]
		BSTR Value();
[id(0x00000006), propput, helpcontext(0x00010006)]
		void Value(
			[in]BSTR arg1);
[id(0x000002d7), propget, helpcontext(0x000102d7)]
		VARIANT VisibleItems(
			[in, optional]VARIANT Index);
[id(0x000005e3), helpcontext(0x000105e3)]
		CalculatedItems* CalculatedItems();
[id(0x00000075), helpcontext(0x00010075)]
		void Delete();
[id(0x000005e4), propget, helpcontext(0x000105e4)]
		VARIANT_BOOL DragToColumn();
[id(0x000005e4), propput, helpcontext(0x000105e4)]
		void DragToColumn(
			[in]VARIANT_BOOL arg1);
[id(0x000005e5), propget, helpcontext(0x000105e5)]
		VARIANT_BOOL DragToHide();
[id(0x000005e5), propput, helpcontext(0x000105e5)]
		void DragToHide(
			[in]VARIANT_BOOL arg1);
[id(0x000005e6), propget, helpcontext(0x000105e6)]
		VARIANT_BOOL DragToPage();
[id(0x000005e6), propput, helpcontext(0x000105e6)]
		void DragToPage(
			[in]VARIANT_BOOL arg1);
[id(0x000005e7), propget, helpcontext(0x000105e7)]
		VARIANT_BOOL DragToRow();
[id(0x000005e7), propput, helpcontext(0x000105e7)]
		void DragToRow(
			[in]VARIANT_BOOL arg1);
[id(0x00000734), propget, helpcontext(0x00010734)]
		VARIANT_BOOL DragToData();
[id(0x00000734), propput, helpcontext(0x00010734)]
		void DragToData(
			[in]VARIANT_BOOL arg1);
[id(0x00000105), propget, helpcontext(0x00010105)]
		BSTR Formula();
[id(0x00000105), propput, helpcontext(0x00010105)]
		void Formula(
			[in]BSTR arg1);
[id(0x000005e8), propget, helpcontext(0x000105e8)]
		VARIANT_BOOL IsCalculated();
[id(0x00000174), propget, helpcontext(0x00010174)]
		long MemoryUsed();
[id(0x000005e9), propget, helpcontext(0x000105e9)]
		VARIANT_BOOL ServerBased();
[id(0x000005e9), propput, helpcontext(0x000105e9)]
		void ServerBased(
			[in]VARIANT_BOOL arg1);
[id(0x00000a13), hidden, helpcontext(0x00010a13)]
		void _AutoSort(
			[in]long Order,
			[in]BSTR Field);
[id(0x000005eb), helpcontext(0x000105eb)]
		void AutoShow(
			[in]long Type,
			[in]long Range,
			[in]long Count,
			[in]BSTR Field);
[id(0x000005ec), propget, helpcontext(0x000105ec)]
		long AutoSortOrder();
[id(0x000005ed), propget, helpcontext(0x000105ed)]
		BSTR AutoSortField();
[id(0x000005ee), propget, helpcontext(0x000105ee)]
		long AutoShowType();
[id(0x000005ef), propget, helpcontext(0x000105ef)]
		long AutoShowRange();
[id(0x000005f0), propget, helpcontext(0x000105f0)]
		long AutoShowCount();
[id(0x000005f1), propget, helpcontext(0x000105f1)]
		BSTR AutoShowField();
[id(0x00000735), propget, helpcontext(0x00010735)]
		VARIANT_BOOL LayoutBlankLine();
[id(0x00000735), propput, helpcontext(0x00010735)]
		void LayoutBlankLine(
			[in]VARIANT_BOOL arg1);
[id(0x00000736), propget, helpcontext(0x00010736)]
		XlSubtototalLocationType LayoutSubtotalLocation();
[id(0x00000736), propput, helpcontext(0x00010736)]
		void LayoutSubtotalLocation(
			[in]XlSubtototalLocationType arg1);
[id(0x00000737), propget, helpcontext(0x00010737)]
		VARIANT_BOOL LayoutPageBreak();
[id(0x00000737), propput, helpcontext(0x00010737)]
		void LayoutPageBreak(
			[in]VARIANT_BOOL arg1);
[id(0x00000738), propget, helpcontext(0x00010738)]
		XlLayoutFormType LayoutForm();
[id(0x00000738), propput, helpcontext(0x00010738)]
		void LayoutForm(
			[in]XlLayoutFormType arg1);
[id(0x00000739), propget, helpcontext(0x00010739)]
		BSTR SubtotalName();
[id(0x00000739), propput, helpcontext(0x00010739)]
		void SubtotalName(
			[in]BSTR arg1);
[id(0x0000008b), propget, helpcontext(0x0001008b)]
		BSTR Caption();
[id(0x0000008b), propput, helpcontext(0x0001008b)]
		void Caption(
			[in]BSTR arg1);
[id(0x0000073a), propget, helpcontext(0x0001073a)]
		VARIANT_BOOL DrilledDown();
[id(0x0000073a), propput, helpcontext(0x0001073a)]
		void DrilledDown(
			[in]VARIANT_BOOL arg1);
[id(0x0000073b), propget, helpcontext(0x0001073b)]
		CubeField* CubeField();
[id(0x0000073c), propget, helpcontext(0x0001073c)]
		BSTR CurrentPageName();
[id(0x0000073c), propput, helpcontext(0x0001073c)]
		void CurrentPageName(
			[in]BSTR arg1);
[id(0x00000824), propget, helpcontext(0x00010824)]
		BSTR StandardFormula();
[id(0x00000824), propput, helpcontext(0x00010824)]
		void StandardFormula(
			[in]BSTR arg1);
[id(0x0000085b), propget, helpcontext(0x0001085b)]
		VARIANT HiddenItemsList();
[id(0x0000085b), propput, helpcontext(0x0001085b)]
		void HiddenItemsList(
			[in]VARIANT arg1);
[id(0x0000085c), propget, helpcontext(0x0001085c)]
		VARIANT_BOOL DatabaseSort();
[id(0x0000085c), propput, helpcontext(0x0001085c)]
		void DatabaseSort(
			[in]VARIANT_BOOL arg1);
[id(0x0000085d), propget, helpcontext(0x0001085d)]
		VARIANT_BOOL IsMemberProperty();
[id(0x0000085e), propget, helpcontext(0x0001085e)]
		PivotField* PropertyParentField();
[id(0x0000085f), propget, helpcontext(0x0001085f)]
		long PropertyOrder();
[id(0x0000085f), propput, helpcontext(0x0001085f)]
		void PropertyOrder(
			[in]long arg1);
[id(0x00000860), propget, helpcontext(0x00010860)]
		VARIANT_BOOL EnableItemSelection();
[id(0x00000860), propput, helpcontext(0x00010860)]
		void EnableItemSelection(
			[in]VARIANT_BOOL arg1);
[id(0x00000861), propget, helpcontext(0x00010861)]
		VARIANT CurrentPageList();
[id(0x00000861), propput, helpcontext(0x00010861)]
		void CurrentPageList(
			[in]VARIANT arg1);
[id(0x00000862), helpcontext(0x00010862)]
		void AddPageItem(
			[in]BSTR Item,
			[in, optional]VARIANT ClearList);
[id(0x0000010c), propget, helpcontext(0x0001010c)]
		VARIANT_BOOL Hidden();
[id(0x0000010c), propput, helpcontext(0x0001010c)]
		void Hidden(
			[in]VARIANT_BOOL arg1);
[id(0x00000a14), helpcontext(0x00010a14)]
		void DrillTo(
			[in]BSTR Field);
[id(0x00000a15), propget, helpcontext(0x00010a15)]
		VARIANT_BOOL UseMemberPropertyAsCaption();
[id(0x00000a15), propput, helpcontext(0x00010a15)]
		void UseMemberPropertyAsCaption(
			[in]VARIANT_BOOL arg1);
[id(0x00000a16), propget, helpcontext(0x00010a16)]
		BSTR MemberPropertyCaption();
[id(0x00000a16), propput, helpcontext(0x00010a16)]
		void MemberPropertyCaption(
			[in]BSTR arg1);
[id(0x00000a17), propget, helpcontext(0x00010a17)]
		VARIANT_BOOL DisplayAsTooltip();
[id(0x00000a17), propput, helpcontext(0x00010a17)]
		void DisplayAsTooltip(
			[in]VARIANT_BOOL arg1);
[id(0x00000a18), propget, helpcontext(0x00010a18)]
		VARIANT_BOOL DisplayInReport();
[id(0x00000a18), propput, helpcontext(0x00010a18)]
		void DisplayInReport(
			[in]VARIANT_BOOL arg1);
[id(0x00000a19), propget, helpcontext(0x00010a19)]
		VARIANT_BOOL DisplayAsCaption();
[id(0x00000a1a), propget, helpcontext(0x00010a1a)]
		VARIANT_BOOL LayoutCompactRow();
[id(0x00000a1a), propput, helpcontext(0x00010a1a)]
		void LayoutCompactRow(
			[in]VARIANT_BOOL arg1);
[id(0x00000a1b), propget, helpcontext(0x00010a1b)]
		VARIANT_BOOL IncludeNewItemsInFilter();
[id(0x00000a1b), propput, helpcontext(0x00010a1b)]
		void IncludeNewItemsInFilter(
			[in]VARIANT_BOOL arg1);
[id(0x00000a1c), propget, helpcontext(0x00010a1c)]
		VARIANT VisibleItemsList();
[id(0x00000a1c), propput, helpcontext(0x00010a1c)]
		void VisibleItemsList(
			[in]VARIANT arg1);
[id(0x00000a1d), propget, helpcontext(0x00010a1d)]
		PivotFilters* PivotFilters();
[id(0x00000a1e), propget, helpcontext(0x00010a1e)]
		PivotLine* AutoSortPivotLine();
[id(0x00000a1f), propget, helpcontext(0x00010a1f)]
		long AutoSortCustomSubtotal();
[id(0x00000a20), propget, helpcontext(0x00010a20)]
		VARIANT_BOOL ShowingInAxis();
[id(0x00000888), propget, helpcontext(0x00010888)]
		VARIANT_BOOL EnableMultiplePageItems();
[id(0x00000888), propput, helpcontext(0x00010888)]
		void EnableMultiplePageItems(
			[in]VARIANT_BOOL arg1);
[id(0x00000a21), propget, helpcontext(0x00010a21)]
		VARIANT_BOOL AllItemsVisible();
[id(0x00000a22), helpcontext(0x00010a22)]
		void ClearManualFilter();
[id(0x00000a01), helpcontext(0x00010a01)]
		void ClearAllFilters();
[id(0x00000a23), helpcontext(0x00010a23)]
		void ClearValueFilters();
[id(0x00000a24), helpcontext(0x00010a24)]
		void ClearLabelFilters();
[id(0x000005ea), helpcontext(0x000105ea)]
		void AutoSort(
			[in]long Order,
			[in]BSTR Field,
			[in, optional]VARIANT PivotLine,
			[in, optional]VARIANT CustomSubtotal);
[id(0x00000a27), propget, helpcontext(0x00010a27)]
		BSTR SourceCaption();
[id(0x00000249), propget, helpcontext(0x00010249)]
		VARIANT_BOOL ShowDetail();
[id(0x00000249), propput, helpcontext(0x00010249)]
		void ShowDetail(
			[in]VARIANT_BOOL arg1);
};
'!
!ExcelPivotField categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelPivotField methodsFor!

_autoSort: order field: field
	"Invoke the _AutoSort() method of the COM object."

	(self invokeId: 2579 with: order with: field)
!

_default
	"Answer the <bstr> value of the '_Default' property of the receiver.
		BSTR _Default"

	^(self getPropertyId: 0)
!

_default: arg1
	"Set the '_Default' property of the receiver to the <bstr> value of the argument.
		void _Default"

	self setPropertyId: 0 value: arg1
!

addPageItem: item
	"Invoke the AddPageItem() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 addPageItem: item
		 clearList: VARIANT unspecified!

addPageItem: item clearList: clearList
	"Invoke the AddPageItem() method of the COM object."

	(self invokeId: 2146 with: item with: clearList)
!

allItemsVisible
	"Answer the <varbool> value of the 'AllItemsVisible' property of the receiver.
		VARIANT_BOOL AllItemsVisible"

	^(self getPropertyId: 2593)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

autoShow: type range: range count: count field: field
	"Invoke the AutoShow() method of the COM object."

	(self invokeId: 1515 withArguments:
			((Array new: 4)
				basicAt: 1 put: type;
				basicAt: 2 put: range;
				basicAt: 3 put: count;
				basicAt: 4 put: field;
				yourself))
!

autoShowCount
	"Answer the <sdword> value of the 'AutoShowCount' property of the receiver.
		long AutoShowCount"

	^(self getPropertyId: 1520)
!

autoShowField
	"Answer the <bstr> value of the 'AutoShowField' property of the receiver.
		BSTR AutoShowField"

	^(self getPropertyId: 1521)
!

autoShowRange
	"Answer the <sdword> value of the 'AutoShowRange' property of the receiver.
		long AutoShowRange"

	^(self getPropertyId: 1519)
!

autoShowType
	"Answer the <sdword> value of the 'AutoShowType' property of the receiver.
		long AutoShowType"

	^(self getPropertyId: 1518)
!

autoSort: order field: field
	"Invoke the AutoSort() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 autoSort: order
		 field: field
		 pivotLine: VARIANT unspecified
		 customSubtotal: VARIANT unspecified!

autoSort: order field: field pivotLine: pivotLine customSubtotal: customSubtotal
	"Invoke the AutoSort() method of the COM object."

	(self invokeId: 1514 withArguments:
			((Array new: 4)
				basicAt: 1 put: order;
				basicAt: 2 put: field;
				basicAt: 3 put: pivotLine;
				basicAt: 4 put: customSubtotal;
				yourself))
!

autoSortCustomSubtotal
	"Answer the <sdword> value of the 'AutoSortCustomSubtotal' property of the receiver.
		long AutoSortCustomSubtotal"

	^(self getPropertyId: 2591)
!

autoSortField
	"Answer the <bstr> value of the 'AutoSortField' property of the receiver.
		BSTR AutoSortField"

	^(self getPropertyId: 1517)
!

autoSortOrder
	"Answer the <sdword> value of the 'AutoSortOrder' property of the receiver.
		long AutoSortOrder"

	^(self getPropertyId: 1516)
!

autoSortPivotLine
	"Answer the <ExcelPivotLine> value of the 'AutoSortPivotLine' property of the receiver.
		PivotLine* AutoSortPivotLine"

	^ExcelPivotLine attachInterface: (self getPropertyId: 2590)
!

baseField
	"Answer the <variant> value of the 'BaseField' property of the receiver.
		VARIANT BaseField"

	^(self getPropertyId: 734)
!

baseField: arg1
	"Set the 'BaseField' property of the receiver to the <variant> value of the argument.
		void BaseField"

	self setPropertyId: 734 value: arg1
!

baseItem
	"Answer the <variant> value of the 'BaseItem' property of the receiver.
		VARIANT BaseItem"

	^(self getPropertyId: 735)
!

baseItem: arg1
	"Set the 'BaseItem' property of the receiver to the <variant> value of the argument.
		void BaseItem"

	self setPropertyId: 735 value: arg1
!

calculatedItems
	"Answer the <ExcelCalculatedItems> result of invoking the CalculatedItems() method of the COM object."

	^ExcelCalculatedItems attachInterface: (self invokeId: 1507)
!

calculation
	"Answer the <sdword> value of the 'Calculation' property of the receiver.
		XlPivotFieldCalculation Calculation"

	^(self getPropertyId: 316)
!

calculation: arg1
	"Set the 'Calculation' property of the receiver to the <sdword> value of the argument.
		void Calculation"

	self setPropertyId: 316 value: arg1
!

caption
	"Answer the <bstr> value of the 'Caption' property of the receiver.
		BSTR Caption"

	^(self getPropertyId: 139)
!

caption: arg1
	"Set the 'Caption' property of the receiver to the <bstr> value of the argument.
		void Caption"

	self setPropertyId: 139 value: arg1
!

childField
	"Answer the <ExcelPivotField> value of the 'ChildField' property of the receiver.
		PivotField* ChildField"

	^ExcelPivotField attachInterface: (self getPropertyId: 736)
!

childItems
	"Answer the <variant> value of the 'ChildItems' property of the receiver.
		VARIANT ChildItems"

	^self childItems: VARIANT unspecified!

childItems: index
	"Answer the <variant> value of the 'ChildItems' property of the receiver.
		VARIANT ChildItems"

	^(self getPropertyId: 730 item: index)
!

clearAllFilters
	"Invoke the ClearAllFilters() method of the COM object."

	(self invokeId: 2561)
!

clearLabelFilters
	"Invoke the ClearLabelFilters() method of the COM object."

	(self invokeId: 2596)
!

clearManualFilter
	"Invoke the ClearManualFilter() method of the COM object."

	(self invokeId: 2594)
!

clearValueFilters
	"Invoke the ClearValueFilters() method of the COM object."

	(self invokeId: 2595)
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

cubeField
	"Answer the <ExcelCubeField> value of the 'CubeField' property of the receiver.
		CubeField* CubeField"

	^ExcelCubeField attachInterface: (self getPropertyId: 1851)
!

currentPage
	"Answer the <variant> value of the 'CurrentPage' property of the receiver.
		VARIANT CurrentPage"

	^(self getPropertyId: 738)
!

currentPage: arg1
	"Set the 'CurrentPage' property of the receiver to the <variant> value of the argument.
		void CurrentPage"

	self setPropertyId: 738 value: arg1
!

currentPageList
	"Answer the <variant> value of the 'CurrentPageList' property of the receiver.
		VARIANT CurrentPageList"

	^(self getPropertyId: 2145)
!

currentPageList: arg1
	"Set the 'CurrentPageList' property of the receiver to the <variant> value of the argument.
		void CurrentPageList"

	self setPropertyId: 2145 value: arg1
!

currentPageName
	"Answer the <bstr> value of the 'CurrentPageName' property of the receiver.
		BSTR CurrentPageName"

	^(self getPropertyId: 1852)
!

currentPageName: arg1
	"Set the 'CurrentPageName' property of the receiver to the <bstr> value of the argument.
		void CurrentPageName"

	self setPropertyId: 1852 value: arg1
!

databaseSort
	"Answer the <varbool> value of the 'DatabaseSort' property of the receiver.
		VARIANT_BOOL DatabaseSort"

	^(self getPropertyId: 2140)
!

databaseSort: arg1
	"Set the 'DatabaseSort' property of the receiver to the <varbool> value of the argument.
		void DatabaseSort"

	self setPropertyId: 2140 value: arg1
!

dataRange
	"Answer the <ExcelRange> value of the 'DataRange' property of the receiver.
		Range* DataRange"

	^ExcelRange attachInterface: (self getPropertyId: 720)
!

dataType
	"Answer the <sdword> value of the 'DataType' property of the receiver.
		XlPivotFieldDataType DataType"

	^(self getPropertyId: 722)
!

delete
	"Invoke the Delete() method of the COM object."

	(self invokeId: 117)
!

displayAsCaption
	"Answer the <varbool> value of the 'DisplayAsCaption' property of the receiver.
		VARIANT_BOOL DisplayAsCaption"

	^(self getPropertyId: 2585)
!

displayAsTooltip
	"Answer the <varbool> value of the 'DisplayAsTooltip' property of the receiver.
		VARIANT_BOOL DisplayAsTooltip"

	^(self getPropertyId: 2583)
!

displayAsTooltip: arg1
	"Set the 'DisplayAsTooltip' property of the receiver to the <varbool> value of the argument.
		void DisplayAsTooltip"

	self setPropertyId: 2583 value: arg1
!

displayInReport
	"Answer the <varbool> value of the 'DisplayInReport' property of the receiver.
		VARIANT_BOOL DisplayInReport"

	^(self getPropertyId: 2584)
!

displayInReport: arg1
	"Set the 'DisplayInReport' property of the receiver to the <varbool> value of the argument.
		void DisplayInReport"

	self setPropertyId: 2584 value: arg1
!

dragToColumn
	"Answer the <varbool> value of the 'DragToColumn' property of the receiver.
		VARIANT_BOOL DragToColumn"

	^(self getPropertyId: 1508)
!

dragToColumn: arg1
	"Set the 'DragToColumn' property of the receiver to the <varbool> value of the argument.
		void DragToColumn"

	self setPropertyId: 1508 value: arg1
!

dragToData
	"Answer the <varbool> value of the 'DragToData' property of the receiver.
		VARIANT_BOOL DragToData"

	^(self getPropertyId: 1844)
!

dragToData: arg1
	"Set the 'DragToData' property of the receiver to the <varbool> value of the argument.
		void DragToData"

	self setPropertyId: 1844 value: arg1
!

dragToHide
	"Answer the <varbool> value of the 'DragToHide' property of the receiver.
		VARIANT_BOOL DragToHide"

	^(self getPropertyId: 1509)
!

dragToHide: arg1
	"Set the 'DragToHide' property of the receiver to the <varbool> value of the argument.
		void DragToHide"

	self setPropertyId: 1509 value: arg1
!

dragToPage
	"Answer the <varbool> value of the 'DragToPage' property of the receiver.
		VARIANT_BOOL DragToPage"

	^(self getPropertyId: 1510)
!

dragToPage: arg1
	"Set the 'DragToPage' property of the receiver to the <varbool> value of the argument.
		void DragToPage"

	self setPropertyId: 1510 value: arg1
!

dragToRow
	"Answer the <varbool> value of the 'DragToRow' property of the receiver.
		VARIANT_BOOL DragToRow"

	^(self getPropertyId: 1511)
!

dragToRow: arg1
	"Set the 'DragToRow' property of the receiver to the <varbool> value of the argument.
		void DragToRow"

	self setPropertyId: 1511 value: arg1
!

drilledDown
	"Answer the <varbool> value of the 'DrilledDown' property of the receiver.
		VARIANT_BOOL DrilledDown"

	^(self getPropertyId: 1850)
!

drilledDown: arg1
	"Set the 'DrilledDown' property of the receiver to the <varbool> value of the argument.
		void DrilledDown"

	self setPropertyId: 1850 value: arg1
!

drillTo: field
	"Invoke the DrillTo() method of the COM object."

	(self invokeId: 2580 with: field)
!

enableItemSelection
	"Answer the <varbool> value of the 'EnableItemSelection' property of the receiver.
		VARIANT_BOOL EnableItemSelection"

	^(self getPropertyId: 2144)
!

enableItemSelection: arg1
	"Set the 'EnableItemSelection' property of the receiver to the <varbool> value of the argument.
		void EnableItemSelection"

	self setPropertyId: 2144 value: arg1
!

enableMultiplePageItems
	"Answer the <varbool> value of the 'EnableMultiplePageItems' property of the receiver.
		VARIANT_BOOL EnableMultiplePageItems"

	^(self getPropertyId: 2184)
!

enableMultiplePageItems: arg1
	"Set the 'EnableMultiplePageItems' property of the receiver to the <varbool> value of the argument.
		void EnableMultiplePageItems"

	self setPropertyId: 2184 value: arg1
!

formula
	"Answer the <bstr> value of the 'Formula' property of the receiver.
		BSTR Formula"

	^(self getPropertyId: 261)
!

formula: arg1
	"Set the 'Formula' property of the receiver to the <bstr> value of the argument.
		void Formula"

	self setPropertyId: 261 value: arg1
!

function
	"Answer the <sdword> value of the 'Function' property of the receiver.
		XlConsolidationFunction Function"

	^(self getPropertyId: 899)
!

function: arg1
	"Set the 'Function' property of the receiver to the <sdword> value of the argument.
		void Function"

	self setPropertyId: 899 value: arg1
!

groupLevel
	"Answer the <variant> value of the 'GroupLevel' property of the receiver.
		VARIANT GroupLevel"

	^(self getPropertyId: 723)
!

hidden
	"Answer the <varbool> value of the 'Hidden' property of the receiver.
		VARIANT_BOOL Hidden"

	^(self getPropertyId: 268)
!

hidden: arg1
	"Set the 'Hidden' property of the receiver to the <varbool> value of the argument.
		void Hidden"

	self setPropertyId: 268 value: arg1
!

hiddenItems
	"Answer the <variant> value of the 'HiddenItems' property of the receiver.
		VARIANT HiddenItems"

	^self hiddenItems: VARIANT unspecified!

hiddenItems: index
	"Answer the <variant> value of the 'HiddenItems' property of the receiver.
		VARIANT HiddenItems"

	^(self getPropertyId: 728 item: index)
!

hiddenItemsList
	"Answer the <variant> value of the 'HiddenItemsList' property of the receiver.
		VARIANT HiddenItemsList"

	^(self getPropertyId: 2139)
!

hiddenItemsList: arg1
	"Set the 'HiddenItemsList' property of the receiver to the <variant> value of the argument.
		void HiddenItemsList"

	self setPropertyId: 2139 value: arg1
!

includeNewItemsInFilter
	"Answer the <varbool> value of the 'IncludeNewItemsInFilter' property of the receiver.
		VARIANT_BOOL IncludeNewItemsInFilter"

	^(self getPropertyId: 2587)
!

includeNewItemsInFilter: arg1
	"Set the 'IncludeNewItemsInFilter' property of the receiver to the <varbool> value of the argument.
		void IncludeNewItemsInFilter"

	self setPropertyId: 2587 value: arg1
!

isCalculated
	"Answer the <varbool> value of the 'IsCalculated' property of the receiver.
		VARIANT_BOOL IsCalculated"

	^(self getPropertyId: 1512)
!

isMemberProperty
	"Answer the <varbool> value of the 'IsMemberProperty' property of the receiver.
		VARIANT_BOOL IsMemberProperty"

	^(self getPropertyId: 2141)
!

labelRange
	"Answer the <ExcelRange> value of the 'LabelRange' property of the receiver.
		Range* LabelRange"

	^ExcelRange attachInterface: (self getPropertyId: 719)
!

layoutBlankLine
	"Answer the <varbool> value of the 'LayoutBlankLine' property of the receiver.
		VARIANT_BOOL LayoutBlankLine"

	^(self getPropertyId: 1845)
!

layoutBlankLine: arg1
	"Set the 'LayoutBlankLine' property of the receiver to the <varbool> value of the argument.
		void LayoutBlankLine"

	self setPropertyId: 1845 value: arg1
!

layoutCompactRow
	"Answer the <varbool> value of the 'LayoutCompactRow' property of the receiver.
		VARIANT_BOOL LayoutCompactRow"

	^(self getPropertyId: 2586)
!

layoutCompactRow: arg1
	"Set the 'LayoutCompactRow' property of the receiver to the <varbool> value of the argument.
		void LayoutCompactRow"

	self setPropertyId: 2586 value: arg1
!

layoutForm
	"Answer the <sdword> value of the 'LayoutForm' property of the receiver.
		XlLayoutFormType LayoutForm"

	^(self getPropertyId: 1848)
!

layoutForm: arg1
	"Set the 'LayoutForm' property of the receiver to the <sdword> value of the argument.
		void LayoutForm"

	self setPropertyId: 1848 value: arg1
!

layoutPageBreak
	"Answer the <varbool> value of the 'LayoutPageBreak' property of the receiver.
		VARIANT_BOOL LayoutPageBreak"

	^(self getPropertyId: 1847)
!

layoutPageBreak: arg1
	"Set the 'LayoutPageBreak' property of the receiver to the <varbool> value of the argument.
		void LayoutPageBreak"

	self setPropertyId: 1847 value: arg1
!

layoutSubtotalLocation
	"Answer the <sdword> value of the 'LayoutSubtotalLocation' property of the receiver.
		XlSubtototalLocationType LayoutSubtotalLocation"

	^(self getPropertyId: 1846)
!

layoutSubtotalLocation: arg1
	"Set the 'LayoutSubtotalLocation' property of the receiver to the <sdword> value of the argument.
		void LayoutSubtotalLocation"

	self setPropertyId: 1846 value: arg1
!

memberPropertyCaption
	"Answer the <bstr> value of the 'MemberPropertyCaption' property of the receiver.
		BSTR MemberPropertyCaption"

	^(self getPropertyId: 2582)
!

memberPropertyCaption: arg1
	"Set the 'MemberPropertyCaption' property of the receiver to the <bstr> value of the argument.
		void MemberPropertyCaption"

	self setPropertyId: 2582 value: arg1
!

memoryUsed
	"Answer the <sdword> value of the 'MemoryUsed' property of the receiver.
		long MemoryUsed"

	^(self getPropertyId: 372)
!

name
	"Answer the <bstr> value of the 'Name' property of the receiver.
		BSTR Name"

	^(self getPropertyId: 110)
!

name: arg1
	"Set the 'Name' property of the receiver to the <bstr> value of the argument.
		void Name"

	self setPropertyId: 110 value: arg1
!

numberFormat
	"Answer the <bstr> value of the 'NumberFormat' property of the receiver.
		BSTR NumberFormat"

	^(self getPropertyId: 193)
!

numberFormat: arg1
	"Set the 'NumberFormat' property of the receiver to the <bstr> value of the argument.
		void NumberFormat"

	self setPropertyId: 193 value: arg1
!

orientation
	"Answer the <sdword> value of the 'Orientation' property of the receiver.
		XlPivotFieldOrientation Orientation"

	^(self getPropertyId: 134)
!

orientation: arg1
	"Set the 'Orientation' property of the receiver to the <sdword> value of the argument.
		void Orientation"

	self setPropertyId: 134 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

parentField
	"Answer the <ExcelPivotField> value of the 'ParentField' property of the receiver.
		PivotField* ParentField"

	^ExcelPivotField attachInterface: (self getPropertyId: 732)
!

parentItems
	"Answer the <variant> value of the 'ParentItems' property of the receiver.
		VARIANT ParentItems"

	^self parentItems: VARIANT unspecified!

parentItems: index
	"Answer the <variant> value of the 'ParentItems' property of the receiver.
		VARIANT ParentItems"

	^(self getPropertyId: 729 item: index)
!

pivotFilters
	"Answer the <ExcelPivotFilters> value of the 'PivotFilters' property of the receiver.
		PivotFilters* PivotFilters"

	^ExcelPivotFilters attachInterface: (self getPropertyId: 2589)
!

pivotItems
	"Answer the <VARIANT> result of invoking the PivotItems() method of the COM object.
	Default values are passed for all optional parameters."

	^self pivotItems: VARIANT unspecified!

pivotItems: index
	"Answer the <VARIANT> result of invoking the PivotItems() method of the COM object."

	^(self invokeId: 737 with: index)
!

position
	"Answer the <variant> value of the 'Position' property of the receiver.
		VARIANT Position"

	^(self getPropertyId: 133)
!

position: arg1
	"Set the 'Position' property of the receiver to the <variant> value of the argument.
		void Position"

	self setPropertyId: 133 value: arg1
!

propertyOrder
	"Answer the <sdword> value of the 'PropertyOrder' property of the receiver.
		long PropertyOrder"

	^(self getPropertyId: 2143)
!

propertyOrder: arg1
	"Set the 'PropertyOrder' property of the receiver to the <sdword> value of the argument.
		void PropertyOrder"

	self setPropertyId: 2143 value: arg1
!

propertyParentField
	"Answer the <ExcelPivotField> value of the 'PropertyParentField' property of the receiver.
		PivotField* PropertyParentField"

	^ExcelPivotField attachInterface: (self getPropertyId: 2142)
!

serverBased
	"Answer the <varbool> value of the 'ServerBased' property of the receiver.
		VARIANT_BOOL ServerBased"

	^(self getPropertyId: 1513)
!

serverBased: arg1
	"Set the 'ServerBased' property of the receiver to the <varbool> value of the argument.
		void ServerBased"

	self setPropertyId: 1513 value: arg1
!

showAllItems
	"Answer the <varbool> value of the 'ShowAllItems' property of the receiver.
		VARIANT_BOOL ShowAllItems"

	^(self getPropertyId: 452)
!

showAllItems: arg1
	"Set the 'ShowAllItems' property of the receiver to the <varbool> value of the argument.
		void ShowAllItems"

	self setPropertyId: 452 value: arg1
!

showDetail
	"Answer the <varbool> value of the 'ShowDetail' property of the receiver.
		VARIANT_BOOL ShowDetail"

	^(self getPropertyId: 585)
!

showDetail: arg1
	"Set the 'ShowDetail' property of the receiver to the <varbool> value of the argument.
		void ShowDetail"

	self setPropertyId: 585 value: arg1
!

showingInAxis
	"Answer the <varbool> value of the 'ShowingInAxis' property of the receiver.
		VARIANT_BOOL ShowingInAxis"

	^(self getPropertyId: 2592)
!

sourceCaption
	"Answer the <bstr> value of the 'SourceCaption' property of the receiver.
		BSTR SourceCaption"

	^(self getPropertyId: 2599)
!

sourceName
	"Answer the <bstr> value of the 'SourceName' property of the receiver.
		BSTR SourceName"

	^(self getPropertyId: 721)
!

standardFormula
	"Answer the <bstr> value of the 'StandardFormula' property of the receiver.
		BSTR StandardFormula"

	^(self getPropertyId: 2084)
!

standardFormula: arg1
	"Set the 'StandardFormula' property of the receiver to the <bstr> value of the argument.
		void StandardFormula"

	self setPropertyId: 2084 value: arg1
!

subtotalName
	"Answer the <bstr> value of the 'SubtotalName' property of the receiver.
		BSTR SubtotalName"

	^(self getPropertyId: 1849)
!

subtotalName: arg1
	"Set the 'SubtotalName' property of the receiver to the <bstr> value of the argument.
		void SubtotalName"

	self setPropertyId: 1849 value: arg1
!

subtotals
	"Answer the <variant> value of the 'Subtotals' property of the receiver.
		VARIANT Subtotals"

	^self subtotals: VARIANT unspecified!

subtotals: index
	"Answer the <variant> value of the 'Subtotals' property of the receiver.
		VARIANT Subtotals"

	^(self getPropertyId: 733 item: index)
!

subtotals: index _: arg2
	"Set the 'Subtotals' property of the receiver to the <variant> value of the argument.
		void Subtotals"

	self setPropertyId: 733 item: index value: arg2
!

totalLevels
	"Answer the <variant> value of the 'TotalLevels' property of the receiver.
		VARIANT TotalLevels"

	^(self getPropertyId: 724)
!

useMemberPropertyAsCaption
	"Answer the <varbool> value of the 'UseMemberPropertyAsCaption' property of the receiver.
		VARIANT_BOOL UseMemberPropertyAsCaption"

	^(self getPropertyId: 2581)
!

useMemberPropertyAsCaption: arg1
	"Set the 'UseMemberPropertyAsCaption' property of the receiver to the <varbool> value of the argument.
		void UseMemberPropertyAsCaption"

	self setPropertyId: 2581 value: arg1
!

value
	"Answer the <bstr> value of the 'Value' property of the receiver.
		BSTR Value"

	^(self getPropertyId: 6)
!

value: arg1
	"Set the 'Value' property of the receiver to the <bstr> value of the argument.
		void Value"

	self setPropertyId: 6 value: arg1
!

visibleItems
	"Answer the <variant> value of the 'VisibleItems' property of the receiver.
		VARIANT VisibleItems"

	^self visibleItems: VARIANT unspecified!

visibleItems: index
	"Answer the <variant> value of the 'VisibleItems' property of the receiver.
		VARIANT VisibleItems"

	^(self getPropertyId: 727 item: index)
!

visibleItemsList
	"Answer the <variant> value of the 'VisibleItemsList' property of the receiver.
		VARIANT VisibleItemsList"

	^(self getPropertyId: 2588)
!

visibleItemsList: arg1
	"Set the 'VisibleItemsList' property of the receiver to the <variant> value of the argument.
		void VisibleItemsList"

	self setPropertyId: 2588 value: arg1
! !
!ExcelPivotField categoriesFor: #_autoSort:field:!**auto generated**!methods!public! !
!ExcelPivotField categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #_default:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #addPageItem:!**auto generated**!methods!public! !
!ExcelPivotField categoriesFor: #addPageItem:clearList:!**auto generated**!methods!public! !
!ExcelPivotField categoriesFor: #allItemsVisible!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #application!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #autoShow:range:count:field:!**auto generated**!methods!public! !
!ExcelPivotField categoriesFor: #autoShowCount!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #autoShowField!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #autoShowRange!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #autoShowType!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #autoSort:field:!**auto generated**!methods!public! !
!ExcelPivotField categoriesFor: #autoSort:field:pivotLine:customSubtotal:!**auto generated**!methods!public! !
!ExcelPivotField categoriesFor: #autoSortCustomSubtotal!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #autoSortField!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #autoSortOrder!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #autoSortPivotLine!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #baseField!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #baseField:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #baseItem!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #baseItem:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #calculatedItems!**auto generated**!methods!public! !
!ExcelPivotField categoriesFor: #calculation!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #calculation:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #caption!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #caption:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #childField!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #childItems!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #childItems:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #clearAllFilters!**auto generated**!methods!public! !
!ExcelPivotField categoriesFor: #clearLabelFilters!**auto generated**!methods!public! !
!ExcelPivotField categoriesFor: #clearManualFilter!**auto generated**!methods!public! !
!ExcelPivotField categoriesFor: #clearValueFilters!**auto generated**!methods!public! !
!ExcelPivotField categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #cubeField!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #currentPage!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #currentPage:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #currentPageList!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #currentPageList:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #currentPageName!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #currentPageName:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #databaseSort!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #databaseSort:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #dataRange!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #dataType!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelPivotField categoriesFor: #displayAsCaption!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #displayAsTooltip!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #displayAsTooltip:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #displayInReport!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #displayInReport:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #dragToColumn!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #dragToColumn:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #dragToData!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #dragToData:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #dragToHide!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #dragToHide:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #dragToPage!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #dragToPage:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #dragToRow!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #dragToRow:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #drilledDown!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #drilledDown:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #drillTo:!**auto generated**!methods!public! !
!ExcelPivotField categoriesFor: #enableItemSelection!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #enableItemSelection:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #enableMultiplePageItems!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #enableMultiplePageItems:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #formula:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #function!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #function:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #groupLevel!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #hidden!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #hidden:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #hiddenItems!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #hiddenItems:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #hiddenItemsList!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #hiddenItemsList:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #includeNewItemsInFilter!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #includeNewItemsInFilter:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #isCalculated!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #isMemberProperty!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #labelRange!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #layoutBlankLine!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #layoutBlankLine:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #layoutCompactRow!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #layoutCompactRow:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #layoutForm!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #layoutForm:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #layoutPageBreak!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #layoutPageBreak:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #layoutSubtotalLocation!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #layoutSubtotalLocation:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #memberPropertyCaption!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #memberPropertyCaption:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #memoryUsed!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #name!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #numberFormat!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #parentField!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #parentItems!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #parentItems:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #pivotFilters!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #pivotItems!**auto generated**!methods!public! !
!ExcelPivotField categoriesFor: #pivotItems:!**auto generated**!methods!public! !
!ExcelPivotField categoriesFor: #position!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #position:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #propertyOrder!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #propertyOrder:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #propertyParentField!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #serverBased!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #serverBased:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #showAllItems!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #showAllItems:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #showDetail!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #showDetail:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #showingInAxis!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #sourceCaption!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #sourceName!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #standardFormula!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #standardFormula:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #subtotalName!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #subtotalName:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #subtotals!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #subtotals:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #subtotals:_:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #totalLevels!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #useMemberPropertyAsCaption!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #useMemberPropertyAsCaption:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #value!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #visibleItems!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #visibleItems:!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #visibleItemsList!**auto generated**!properties!public! !
!ExcelPivotField categoriesFor: #visibleItemsList:!**auto generated**!properties!public! !

!ExcelPivotField class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelPivotField initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelPivotField class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

