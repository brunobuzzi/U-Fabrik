"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #ExcelRange
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ExcelConstants'
	classInstanceVariableNames: ''!
ExcelRange guid: (IID fromString: '{00020846-0000-0000-C000-000000000046}')!
ExcelRange comment: '<ExcelRange> is a wrapper class generated for the dispatch interface ''Excel.Range'' from type information in the ''Microsoft Excel 12.0 Object Library'' library. It contains methods to get and set the properties and invoke the methods exposed by that interface.

The type library contains no documentation for this dispinterface

Warning: This comment was automatically generated from the dispinterface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	uuid(00020846-0000-0000-C000-000000000046), 
	helpcontext(0x00020006)
]
dispinterface Range {
	properties:
	methods:
[id(0x00000094), propget, helpcontext(0x00010094)]
		Application* Application();
[id(0x00000095), propget, helpcontext(0x00010095)]
		XlCreator Creator();
[id(0x00000096), propget, helpcontext(0x00010096)]
		IDispatch* Parent();
[id(0x00000130), helpcontext(0x00010130)]
		VARIANT Activate();
[id(0x00000427), propget, helpcontext(0x00010427)]
		VARIANT AddIndent();
[id(0x00000427), propput, helpcontext(0x00010427)]
		void AddIndent(
			[in]VARIANT arg1);
[id(0x000000ec), propget, helpcontext(0x000100ec)]
		BSTR Address(
			[in, optional]VARIANT RowAbsolute,
			[in, optional]VARIANT ColumnAbsolute,
			[in, defaultvalue(1)]XlReferenceStyle ReferenceStyle,
			[in, optional]VARIANT External,
			[in, optional]VARIANT RelativeTo);
[id(0x000001b5), propget, helpcontext(0x000101b5)]
		BSTR AddressLocal(
			[in, optional]VARIANT RowAbsolute,
			[in, optional]VARIANT ColumnAbsolute,
			[in, defaultvalue(1)]XlReferenceStyle ReferenceStyle,
			[in, optional]VARIANT External,
			[in, optional]VARIANT RelativeTo);
[id(0x0000036c), helpcontext(0x0001036c)]
		VARIANT AdvancedFilter(
			[in]XlFilterAction Action,
			[in, optional]VARIANT CriteriaRange,
			[in, optional]VARIANT CopyToRange,
			[in, optional]VARIANT Unique);
[id(0x000001b9), helpcontext(0x000101b9)]
		VARIANT ApplyNames(
			[in, optional]VARIANT Names,
			[in, optional]VARIANT IgnoreRelativeAbsolute,
			[in, optional]VARIANT UseRowColumnNames,
			[in, optional]VARIANT OmitColumn,
			[in, optional]VARIANT OmitRow,
			[in, defaultvalue(1)]XlApplyNamesOrder Order,
			[in, optional]VARIANT AppendLast);
[id(0x000001c0), helpcontext(0x000101c0)]
		VARIANT ApplyOutlineStyles();
[id(0x00000238), propget, helpcontext(0x00010238)]
		Areas* Areas();
[id(0x000004a1), helpcontext(0x000104a1)]
		BSTR AutoComplete(
			[in]BSTR String);
[id(0x000001c1), helpcontext(0x000101c1)]
		VARIANT AutoFill(
			[in]Range* Destination,
			[in, defaultvalue(0)]XlAutoFillType Type);
[id(0x00000319), helpcontext(0x00010319)]
		VARIANT AutoFilter(
			[in, optional]VARIANT Field,
			[in, optional]VARIANT Criteria1,
			[in, defaultvalue(1)]XlAutoFilterOperator Operator,
			[in, optional]VARIANT Criteria2,
			[in, optional]VARIANT VisibleDropDown);
[id(0x000000ed), helpcontext(0x000100ed)]
		VARIANT AutoFit();
[id(0x00000072), hidden, helpcontext(0x00010072)]
		VARIANT AutoFormat(
			[in, defaultvalue(1)]XlRangeAutoFormat Format,
			[in, optional]VARIANT Number,
			[in, optional]VARIANT Font,
			[in, optional]VARIANT Alignment,
			[in, optional]VARIANT Border,
			[in, optional]VARIANT Pattern,
			[in, optional]VARIANT Width);
[id(0x0000040c), helpcontext(0x0001040c)]
		VARIANT AutoOutline();
[id(0x0000042b), helpcontext(0x0001042b)]
		VARIANT BorderAround(
			[in, optional]VARIANT LineStyle,
			[in, defaultvalue(2)]XlBorderWeight Weight,
			[in, defaultvalue(-4105)]XlColorIndex ColorIndex,
			[in, optional]VARIANT Color);
[id(0x000001b3), propget, helpcontext(0x000101b3)]
		Borders* Borders();
[id(0x00000117), helpcontext(0x00010117)]
		VARIANT Calculate();
[id(0x000000ee), propget, helpcontext(0x000100ee)]
		Range* Cells();
[id(0x0000025b), propget, helpcontext(0x0001025b)]
		Characters* Characters(
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Length);
[id(0x000001f9), helpcontext(0x000101f9)]
		VARIANT CheckSpelling(
			[in, optional]VARIANT CustomDictionary,
			[in, optional]VARIANT IgnoreUppercase,
			[in, optional]VARIANT AlwaysSuggest,
			[in, optional]VARIANT SpellLang);
[id(0x0000006f), helpcontext(0x0001006f)]
		VARIANT Clear();
[id(0x00000071), helpcontext(0x00010071)]
		VARIANT ClearContents();
[id(0x00000070), helpcontext(0x00010070)]
		VARIANT ClearFormats();
[id(0x000000ef), helpcontext(0x000100ef)]
		VARIANT ClearNotes();
[id(0x0000040d), helpcontext(0x0001040d)]
		VARIANT ClearOutline();
[id(0x000000f0), propget, helpcontext(0x000100f0)]
		long Column();
[id(0x000001fe), helpcontext(0x000101fe)]
		Range* ColumnDifferences(
			[in]VARIANT Comparison);
[id(0x000000f1), propget, helpcontext(0x000100f1)]
		Range* Columns();
[id(0x000000f2), propget, helpcontext(0x000100f2)]
		VARIANT ColumnWidth();
[id(0x000000f2), propput, helpcontext(0x000100f2)]
		void ColumnWidth(
			[in]VARIANT arg1);
[id(0x000001e2), helpcontext(0x000101e2)]
		VARIANT Consolidate(
			[in, optional]VARIANT Sources,
			[in, optional]VARIANT Function,
			[in, optional]VARIANT TopRow,
			[in, optional]VARIANT LeftColumn,
			[in, optional]VARIANT CreateLinks);
[id(0x00000227), helpcontext(0x00010227)]
		VARIANT Copy(
			[in, optional]VARIANT Destination);
[id(0x00000480), helpcontext(0x00010480)]
		long CopyFromRecordset(
			[in]IUnknown* Data,
			[in, optional]VARIANT MaxRows,
			[in, optional]VARIANT MaxColumns);
[id(0x000000d5), helpcontext(0x000100d5)]
		VARIANT CopyPicture(
			[in, defaultvalue(1)]XlPictureAppearance Appearance,
			[in, defaultvalue(-4147)]XlCopyPictureFormat Format);
[id(0x00000076), propget, helpcontext(0x00010076)]
		long Count();
[id(0x000001c9), helpcontext(0x000101c9)]
		VARIANT CreateNames(
			[in, optional]VARIANT Top,
			[in, optional]VARIANT Left,
			[in, optional]VARIANT Bottom,
			[in, optional]VARIANT Right);
[id(0x000001ca), hidden, helpcontext(0x000101ca)]
		VARIANT CreatePublisher(
			[in, optional]VARIANT Edition,
			[in, defaultvalue(1)]XlPictureAppearance Appearance,
			[in, optional]VARIANT ContainsPICT,
			[in, optional]VARIANT ContainsBIFF,
			[in, optional]VARIANT ContainsRTF,
			[in, optional]VARIANT ContainsVALU);
[id(0x000001f5), propget, helpcontext(0x000101f5)]
		Range* CurrentArray();
[id(0x000000f3), propget, helpcontext(0x000100f3)]
		Range* CurrentRegion();
[id(0x00000235), helpcontext(0x00010235)]
		VARIANT Cut(
			[in, optional]VARIANT Destination);
[id(0x000001d0), helpcontext(0x000101d0)]
		VARIANT DataSeries(
			[in, optional]VARIANT Rowcol,
			[in, defaultvalue(-4132)]XlDataSeriesType Type,
			[in, defaultvalue(1)]XlDataSeriesDate Date,
			[in, optional]VARIANT Step,
			[in, optional]VARIANT Stop,
			[in, optional]VARIANT Trend);
[id(0000000000), propget, helpcontext(0x00010000)]
		VARIANT _Default(
			[in, optional]VARIANT RowIndex,
			[in, optional]VARIANT ColumnIndex);
[id(0000000000), propput, helpcontext(0x00010000)]
		void _Default(
			[in, optional]VARIANT RowIndex,
			[in, optional]VARIANT ColumnIndex,
			[in]VARIANT arg3);
[id(0x00000075), helpcontext(0x00010075)]
		VARIANT Delete(
			[in, optional]VARIANT Shift);
[id(0x0000021f), propget, helpcontext(0x0001021f)]
		Range* Dependents();
[id(0x000000f5), helpcontext(0x000100f5)]
		VARIANT DialogBox();
[id(0x00000221), propget, helpcontext(0x00010221)]
		Range* DirectDependents();
[id(0x00000222), propget, helpcontext(0x00010222)]
		Range* DirectPrecedents();
[id(0x0000046b), helpcontext(0x0001046b)]
		VARIANT EditionOptions(
			[in]XlEditionType Type,
			[in]XlEditionOptionsOption Option,
			[in, optional]VARIANT Name,
			[in, optional]VARIANT Reference,
			[in, defaultvalue(1)]XlPictureAppearance Appearance,
			[in, defaultvalue(1)]XlPictureAppearance ChartSize,
			[in, optional]VARIANT Format);
[id(0x000001f4), propget, helpcontext(0x000101f4)]
		Range* End(
			[in]XlDirection Direction);
[id(0x000000f6), propget, helpcontext(0x000100f6)]
		Range* EntireColumn();
[id(0x000000f7), propget, helpcontext(0x000100f7)]
		Range* EntireRow();
[id(0x000000f8), helpcontext(0x000100f8)]
		VARIANT FillDown();
[id(0x000000f9), helpcontext(0x000100f9)]
		VARIANT FillLeft();
[id(0x000000fa), helpcontext(0x000100fa)]
		VARIANT FillRight();
[id(0x000000fb), helpcontext(0x000100fb)]
		VARIANT FillUp();
[id(0x0000018e), helpcontext(0x0001018e)]
		Range* Find(
			[in]VARIANT What,
			[in, optional]VARIANT After,
			[in, optional]VARIANT LookIn,
			[in, optional]VARIANT LookAt,
			[in, optional]VARIANT SearchOrder,
			[in, defaultvalue(1)]XlSearchDirection SearchDirection,
			[in, optional]VARIANT MatchCase,
			[in, optional]VARIANT MatchByte,
			[in, optional]VARIANT SearchFormat);
[id(0x0000018f), helpcontext(0x0001018f)]
		Range* FindNext(
			[in, optional]VARIANT After);
[id(0x00000190), helpcontext(0x00010190)]
		Range* FindPrevious(
			[in, optional]VARIANT After);
[id(0x00000092), propget, helpcontext(0x00010092)]
		Font* Font();
[id(0x00000105), propget, helpcontext(0x00010105)]
		VARIANT Formula();
[id(0x00000105), propput, helpcontext(0x00010105)]
		void Formula(
			[in]VARIANT arg1);
[id(0x0000024a), propget, helpcontext(0x0001024a)]
		VARIANT FormulaArray();
[id(0x0000024a), propput, helpcontext(0x0001024a)]
		void FormulaArray(
			[in]VARIANT arg1);
[id(0x00000564), hidden, propget, helpcontext(0x00010564)]
		XlFormulaLabel FormulaLabel();
[id(0x00000564), hidden, propput, helpcontext(0x00010564)]
		void FormulaLabel(
			[in]XlFormulaLabel arg1);
[id(0x00000106), propget, helpcontext(0x00010106)]
		VARIANT FormulaHidden();
[id(0x00000106), propput, helpcontext(0x00010106)]
		void FormulaHidden(
			[in]VARIANT arg1);
[id(0x00000107), propget, helpcontext(0x00010107)]
		VARIANT FormulaLocal();
[id(0x00000107), propput, helpcontext(0x00010107)]
		void FormulaLocal(
			[in]VARIANT arg1);
[id(0x00000108), propget, helpcontext(0x00010108)]
		VARIANT FormulaR1C1();
[id(0x00000108), propput, helpcontext(0x00010108)]
		void FormulaR1C1(
			[in]VARIANT arg1);
[id(0x00000109), propget, helpcontext(0x00010109)]
		VARIANT FormulaR1C1Local();
[id(0x00000109), propput, helpcontext(0x00010109)]
		void FormulaR1C1Local(
			[in]VARIANT arg1);
[id(0x0000023b), helpcontext(0x0001023b)]
		VARIANT FunctionWizard();
[id(0x000001d8), hidden, helpcontext(0x000101d8)]
		VARIANT_BOOL GoalSeek(
			[in]VARIANT Goal,
			[in]Range* ChangingCell);
[id(0x0000002e), helpcontext(0x0001002e)]
		VARIANT Group(
			[in, optional]VARIANT Start,
			[in, optional]VARIANT End,
			[in, optional]VARIANT By,
			[in, optional]VARIANT Periods);
[id(0x0000010a), propget, helpcontext(0x0001010a)]
		VARIANT HasArray();
[id(0x0000010b), propget, helpcontext(0x0001010b)]
		VARIANT HasFormula();
[id(0x0000007b), propget, helpcontext(0x0001007b)]
		VARIANT Height();
[id(0x0000010c), propget, helpcontext(0x0001010c)]
		VARIANT Hidden();
[id(0x0000010c), propput, helpcontext(0x0001010c)]
		void Hidden(
			[in]VARIANT arg1);
[id(0x00000088), propget, helpcontext(0x00010088)]
		VARIANT HorizontalAlignment();
[id(0x00000088), propput, helpcontext(0x00010088)]
		void HorizontalAlignment(
			[in]VARIANT arg1);
[id(0x000000c9), propget, helpcontext(0x000100c9)]
		VARIANT IndentLevel();
[id(0x000000c9), propput, helpcontext(0x000100c9)]
		void IndentLevel(
			[in]VARIANT arg1);
[id(0x00000565), helpcontext(0x00010565)]
		void InsertIndent(
			[in]long InsertAmount);
[id(0x000000fc), helpcontext(0x000100fc)]
		VARIANT Insert(
			[in, optional]VARIANT Shift,
			[in, optional]VARIANT CopyOrigin);
[id(0x00000081), propget, helpcontext(0x00010081)]
		Interior* Interior();
[id(0x000000aa), propget, helpcontext(0x000100aa)]
		VARIANT Item(
			[in]VARIANT RowIndex,
			[in, optional]VARIANT ColumnIndex);
[id(0x000000aa), propput, helpcontext(0x000100aa)]
		void Item(
			[in]VARIANT RowIndex,
			[in, optional]VARIANT ColumnIndex,
			[in]VARIANT arg3);
[id(0x000001ef), helpcontext(0x000101ef)]
		VARIANT Justify();
[id(0x0000007f), propget, helpcontext(0x0001007f)]
		VARIANT Left();
[id(0x000004a3), propget, helpcontext(0x000104a3)]
		long ListHeaderRows();
[id(0x000000fd), helpcontext(0x000100fd)]
		VARIANT ListNames();
[id(0x000002b3), propget, helpcontext(0x000102b3)]
		XlLocationInTable LocationInTable();
[id(0x0000010d), propget, helpcontext(0x0001010d)]
		VARIANT Locked();
[id(0x0000010d), propput, helpcontext(0x0001010d)]
		void Locked(
			[in]VARIANT arg1);
[id(0x00000234), helpcontext(0x00010234)]
		void Merge(
			[in, optional]VARIANT Across);
[id(0x00000568), helpcontext(0x00010568)]
		void UnMerge();
[id(0x00000569), propget, helpcontext(0x00010569)]
		Range* MergeArea();
[id(0x000000d0), propget, helpcontext(0x000100d0)]
		VARIANT MergeCells();
[id(0x000000d0), propput, helpcontext(0x000100d0)]
		void MergeCells(
			[in]VARIANT arg1);
[id(0x0000006e), propget, helpcontext(0x0001006e)]
		VARIANT Name();
[id(0x0000006e), propput, helpcontext(0x0001006e)]
		void Name(
			[in]VARIANT arg1);
[id(0x00000408), helpcontext(0x00010408)]
		VARIANT NavigateArrow(
			[in, optional]VARIANT TowardPrecedent,
			[in, optional]VARIANT ArrowNumber,
			[in, optional]VARIANT LinkNumber);
[id(0xfffffffc), propget, helpcontext(0x0000fffc)]
		IUnknown* _NewEnum();
[id(0x000001f6), propget, helpcontext(0x000101f6)]
		Range* Next();
[id(0x00000467), helpcontext(0x00010467)]
		BSTR NoteText(
			[in, optional]VARIANT Text,
			[in, optional]VARIANT Start,
			[in, optional]VARIANT Length);
[id(0x000000c1), propget, helpcontext(0x000100c1)]
		VARIANT NumberFormat();
[id(0x000000c1), propput, helpcontext(0x000100c1)]
		void NumberFormat(
			[in]VARIANT arg1);
[id(0x00000449), propget, helpcontext(0x00010449)]
		VARIANT NumberFormatLocal();
[id(0x00000449), propput, helpcontext(0x00010449)]
		void NumberFormatLocal(
			[in]VARIANT arg1);
[id(0x000000fe), propget, helpcontext(0x000100fe)]
		Range* Offset(
			[in, optional]VARIANT RowOffset,
			[in, optional]VARIANT ColumnOffset);
[id(0x00000086), propget, helpcontext(0x00010086)]
		VARIANT Orientation();
[id(0x00000086), propput, helpcontext(0x00010086)]
		void Orientation(
			[in]VARIANT arg1);
[id(0x0000010f), propget, helpcontext(0x0001010f)]
		VARIANT OutlineLevel();
[id(0x0000010f), propput, helpcontext(0x0001010f)]
		void OutlineLevel(
			[in]VARIANT arg1);
[id(0x000000ff), propget, helpcontext(0x000100ff)]
		long PageBreak();
[id(0x000000ff), propput, helpcontext(0x000100ff)]
		void PageBreak(
			[in]long arg1);
[id(0x000001dd), helpcontext(0x000101dd)]
		VARIANT Parse(
			[in, optional]VARIANT ParseLine,
			[in, optional]VARIANT Destination);
[id(0x00000403), hidden, helpcontext(0x00010403)]
		VARIANT _PasteSpecial(
			[in, defaultvalue(-4104)]XlPasteType Paste,
			[in, defaultvalue(-4142)]XlPasteSpecialOperation Operation,
			[in, optional]VARIANT SkipBlanks,
			[in, optional]VARIANT Transpose);
[id(0x000002db), propget, helpcontext(0x000102db)]
		PivotField* PivotField();
[id(0x000002e4), propget, helpcontext(0x000102e4)]
		PivotItem* PivotItem();
[id(0x000002cc), propget, helpcontext(0x000102cc)]
		PivotTable* PivotTable();
[id(0x00000220), propget, helpcontext(0x00010220)]
		Range* Precedents();
[id(0x000001f8), propget, helpcontext(0x000101f8)]
		VARIANT PrefixCharacter();
[id(0x000001f7), propget, helpcontext(0x000101f7)]
		Range* Previous();
[id(0x00000389), hidden, helpcontext(0x00010389)]
		VARIANT __PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate);
[id(0x00000119), helpcontext(0x00010119)]
		VARIANT PrintPreview(
			[in, optional]VARIANT EnableChanges);
[id(0x0000056a), propget, helpcontext(0x0001056a)]
		QueryTable* QueryTable();
[id(0x000000c5), propget, helpcontext(0x000100c5)]
		Range* Range(
			[in]VARIANT Cell1,
			[in, optional]VARIANT Cell2);
[id(0x00000373), helpcontext(0x00010373)]
		VARIANT RemoveSubtotal();
[id(0x000000e2), helpcontext(0x000100e2)]
		VARIANT_BOOL Replace(
			[in]VARIANT What,
			[in]VARIANT Replacement,
			[in, optional]VARIANT LookAt,
			[in, optional]VARIANT SearchOrder,
			[in, optional]VARIANT MatchCase,
			[in, optional]VARIANT MatchByte,
			[in, optional]VARIANT SearchFormat,
			[in, optional]VARIANT ReplaceFormat);
[id(0x00000100), propget, helpcontext(0x00010100)]
		Range* Resize(
			[in, optional]VARIANT RowSize,
			[in, optional]VARIANT ColumnSize);
[id(0x00000101), propget, helpcontext(0x00010101)]
		long Row();
[id(0x000001ff), helpcontext(0x000101ff)]
		Range* RowDifferences(
			[in]VARIANT Comparison);
[id(0x00000110), propget, helpcontext(0x00010110)]
		VARIANT RowHeight();
[id(0x00000110), propput, helpcontext(0x00010110)]
		void RowHeight(
			[in]VARIANT arg1);
[id(0x00000102), propget, helpcontext(0x00010102)]
		Range* Rows();
[id(0x00000103), helpcontext(0x00010103)]
		VARIANT Run(
			[in, optional]VARIANT Arg1,
			[in, optional]VARIANT Arg2,
			[in, optional]VARIANT Arg3,
			[in, optional]VARIANT Arg4,
			[in, optional]VARIANT Arg5,
			[in, optional]VARIANT Arg6,
			[in, optional]VARIANT Arg7,
			[in, optional]VARIANT Arg8,
			[in, optional]VARIANT Arg9,
			[in, optional]VARIANT Arg10,
			[in, optional]VARIANT Arg11,
			[in, optional]VARIANT Arg12,
			[in, optional]VARIANT Arg13,
			[in, optional]VARIANT Arg14,
			[in, optional]VARIANT Arg15,
			[in, optional]VARIANT Arg16,
			[in, optional]VARIANT Arg17,
			[in, optional]VARIANT Arg18,
			[in, optional]VARIANT Arg19,
			[in, optional]VARIANT Arg20,
			[in, optional]VARIANT Arg21,
			[in, optional]VARIANT Arg22,
			[in, optional]VARIANT Arg23,
			[in, optional]VARIANT Arg24,
			[in, optional]VARIANT Arg25,
			[in, optional]VARIANT Arg26,
			[in, optional]VARIANT Arg27,
			[in, optional]VARIANT Arg28,
			[in, optional]VARIANT Arg29,
			[in, optional]VARIANT Arg30);
[id(0x000000eb), helpcontext(0x000100eb)]
		VARIANT Select();
[id(0x000001f0), helpcontext(0x000101f0)]
		VARIANT Show();
[id(0x0000036d), helpcontext(0x0001036d)]
		VARIANT ShowDependents(
			[in, optional]VARIANT Remove);
[id(0x00000249), propget, helpcontext(0x00010249)]
		VARIANT ShowDetail();
[id(0x00000249), propput, helpcontext(0x00010249)]
		void ShowDetail(
			[in]VARIANT arg1);
[id(0x0000036e), helpcontext(0x0001036e)]
		VARIANT ShowErrors();
[id(0x0000036f), helpcontext(0x0001036f)]
		VARIANT ShowPrecedents(
			[in, optional]VARIANT Remove);
[id(0x000000d1), propget, helpcontext(0x000100d1)]
		VARIANT ShrinkToFit();
[id(0x000000d1), propput, helpcontext(0x000100d1)]
		void ShrinkToFit(
			[in]VARIANT arg1);
[id(0x00000370), helpcontext(0x00010370)]
		VARIANT Sort(
			[in, optional]VARIANT Key1,
			[in, defaultvalue(1)]XlSortOrder Order1,
			[in, optional]VARIANT Key2,
			[in, optional]VARIANT Type,
			[in, defaultvalue(1)]XlSortOrder Order2,
			[in, optional]VARIANT Key3,
			[in, defaultvalue(1)]XlSortOrder Order3,
			[in, defaultvalue(2)]XlYesNoGuess Header,
			[in, optional]VARIANT OrderCustom,
			[in, optional]VARIANT MatchCase,
			[in, defaultvalue(2)]XlSortOrientation Orientation,
			[in, defaultvalue(1)]XlSortMethod SortMethod,
			[in, defaultvalue(0)]XlSortDataOption DataOption1,
			[in, defaultvalue(0)]XlSortDataOption DataOption2,
			[in, defaultvalue(0)]XlSortDataOption DataOption3);
[id(0x00000371), helpcontext(0x00010371)]
		VARIANT SortSpecial(
			[in, defaultvalue(1)]XlSortMethod SortMethod,
			[in, optional]VARIANT Key1,
			[in, defaultvalue(1)]XlSortOrder Order1,
			[in, optional]VARIANT Type,
			[in, optional]VARIANT Key2,
			[in, defaultvalue(1)]XlSortOrder Order2,
			[in, optional]VARIANT Key3,
			[in, defaultvalue(1)]XlSortOrder Order3,
			[in, defaultvalue(2)]XlYesNoGuess Header,
			[in, optional]VARIANT OrderCustom,
			[in, optional]VARIANT MatchCase,
			[in, defaultvalue(2)]XlSortOrientation Orientation,
			[in, defaultvalue(0)]XlSortDataOption DataOption1,
			[in, defaultvalue(0)]XlSortDataOption DataOption2,
			[in, defaultvalue(0)]XlSortDataOption DataOption3);
[id(0x00000394), propget, helpcontext(0x00010394)]
		SoundNote* SoundNote();
[id(0x0000019a), helpcontext(0x0001019a)]
		Range* SpecialCells(
			[in]XlCellType Type,
			[in, optional]VARIANT Value);
[id(0x00000104), propget, helpcontext(0x00010104)]
		VARIANT Style();
[id(0x00000104), propput, helpcontext(0x00010104)]
		void Style(
			[in]VARIANT arg1);
[id(0x000001e1), helpcontext(0x000101e1)]
		VARIANT SubscribeTo(
			[in]BSTR Edition,
			[in, defaultvalue(-4158)]XlSubscribeToFormat Format);
[id(0x00000372), helpcontext(0x00010372)]
		VARIANT Subtotal(
			[in]long GroupBy,
			[in]XlConsolidationFunction Function,
			[in]VARIANT TotalList,
			[in, optional]VARIANT Replace,
			[in, optional]VARIANT PageBreaks,
			[in, defaultvalue(1)]XlSummaryRow SummaryBelowData);
[id(0x00000111), propget, helpcontext(0x00010111)]
		VARIANT Summary();
[id(0x000001f1), helpcontext(0x000101f1)]
		VARIANT Table(
			[in, optional]VARIANT RowInput,
			[in, optional]VARIANT ColumnInput);
[id(0x0000008a), propget, helpcontext(0x0001008a)]
		VARIANT Text();
[id(0x00000410), helpcontext(0x00010410)]
		VARIANT TextToColumns(
			[in, optional]VARIANT Destination,
			[in, defaultvalue(1)]XlTextParsingType DataType,
			[in, defaultvalue(1)]XlTextQualifier TextQualifier,
			[in, optional]VARIANT ConsecutiveDelimiter,
			[in, optional]VARIANT Tab,
			[in, optional]VARIANT Semicolon,
			[in, optional]VARIANT Comma,
			[in, optional]VARIANT Space,
			[in, optional]VARIANT Other,
			[in, optional]VARIANT OtherChar,
			[in, optional]VARIANT FieldInfo,
			[in, optional]VARIANT DecimalSeparator,
			[in, optional]VARIANT ThousandsSeparator,
			[in, optional]VARIANT TrailingMinusNumbers);
[id(0x0000007e), propget, helpcontext(0x0001007e)]
		VARIANT Top();
[id(0x000000f4), helpcontext(0x000100f4)]
		VARIANT Ungroup();
[id(0x00000112), propget, helpcontext(0x00010112)]
		VARIANT UseStandardHeight();
[id(0x00000112), propput, helpcontext(0x00010112)]
		void UseStandardHeight(
			[in]VARIANT arg1);
[id(0x00000113), propget, helpcontext(0x00010113)]
		VARIANT UseStandardWidth();
[id(0x00000113), propput, helpcontext(0x00010113)]
		void UseStandardWidth(
			[in]VARIANT arg1);
[id(0x0000056b), propget, helpcontext(0x0001056b)]
		Validation* Validation();
[id(0x00000006), propget, helpcontext(0x00010006)]
		VARIANT Value(
			[in, optional]VARIANT RangeValueDataType);
[id(0x00000006), propput, helpcontext(0x00010006)]
		void Value(
			[in, optional]VARIANT RangeValueDataType,
			[in]VARIANT arg2);
[id(0x0000056c), propget, helpcontext(0x0001056c)]
		VARIANT Value2();
[id(0x0000056c), propput, helpcontext(0x0001056c)]
		void Value2(
			[in]VARIANT arg1);
[id(0x00000089), propget, helpcontext(0x00010089)]
		VARIANT VerticalAlignment();
[id(0x00000089), propput, helpcontext(0x00010089)]
		void VerticalAlignment(
			[in]VARIANT arg1);
[id(0x0000007a), propget, helpcontext(0x0001007a)]
		VARIANT Width();
[id(0x0000015c), propget, helpcontext(0x0001015c)]
		Worksheet* Worksheet();
[id(0x00000114), propget, helpcontext(0x00010114)]
		VARIANT WrapText();
[id(0x00000114), propput, helpcontext(0x00010114)]
		void WrapText(
			[in]VARIANT arg1);
[id(0x0000056d), helpcontext(0x0001056d)]
		Comment* AddComment(
			[in, optional]VARIANT Text);
[id(0x0000038e), propget, helpcontext(0x0001038e)]
		Comment* Comment();
[id(0x0000056e), helpcontext(0x0001056e)]
		void ClearComments();
[id(0x0000056f), propget, helpcontext(0x0001056f)]
		Phonetic* Phonetic();
[id(0x00000570), propget, helpcontext(0x00010570)]
		FormatConditions* FormatConditions();
[id(0x000003cf), propget, helpcontext(0x000103cf)]
		long ReadingOrder();
[id(0x000003cf), propput, helpcontext(0x000103cf)]
		void ReadingOrder(
			[in]long arg1);
[id(0x00000571), propget, helpcontext(0x00010571)]
		Hyperlinks* Hyperlinks();
[id(0x00000713), propget, helpcontext(0x00010713)]
		Phonetics* Phonetics();
[id(0x00000714), helpcontext(0x00010714)]
		void SetPhonetic();
[id(0x00000715), propget, helpcontext(0x00010715)]
		BSTR ID();
[id(0x00000715), propput, helpcontext(0x00010715)]
		void ID(
			[in]BSTR arg1);
[id(0x000006ec), hidden, helpcontext(0x000106ec)]
		VARIANT _PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate,
			[in, optional]VARIANT PrToFileName);
[id(0x000007dd), propget, helpcontext(0x000107dd)]
		PivotCell* PivotCell();
[id(0x000007de), helpcontext(0x000107de)]
		void Dirty();
[id(0x000007df), propget, helpcontext(0x000107df)]
		Errors* Errors();
[id(0x000007e0), propget, helpcontext(0x000107e0)]
		SmartTags* SmartTags();
[id(0x000007e1), helpcontext(0x000107e1)]
		void Speak(
			[in, optional]VARIANT SpeakDirection,
			[in, optional]VARIANT SpeakFormulas);
[id(0x00000788), helpcontext(0x00010788)]
		VARIANT PasteSpecial(
			[in, defaultvalue(-4104)]XlPasteType Paste,
			[in, defaultvalue(-4142)]XlPasteSpecialOperation Operation,
			[in, optional]VARIANT SkipBlanks,
			[in, optional]VARIANT Transpose);
[id(0x000007e4), propget, helpcontext(0x000107e4)]
		VARIANT_BOOL AllowEdit();
[id(0x000008d1), propget, helpcontext(0x000108d1)]
		ListObject* ListObject();
[id(0x000008d2), propget, helpcontext(0x000108d2)]
		XPath* XPath();
[id(0x000009bb), propget, helpcontext(0x000109bb)]
		Actions* ServerActions();
[id(0x000009bc), helpcontext(0x000109bc)]
		void RemoveDuplicates(
			[in, optional]VARIANT Columns,
			[in, defaultvalue(2)]XlYesNoGuess Header);
[id(0x00000939), helpcontext(0x00010939)]
		VARIANT PrintOut(
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT Copies,
			[in, optional]VARIANT Preview,
			[in, optional]VARIANT ActivePrinter,
			[in, optional]VARIANT PrintToFile,
			[in, optional]VARIANT Collate,
			[in, optional]VARIANT PrToFileName);
[id(0x0000084b), propget, helpcontext(0x0001084b)]
		BSTR MDX();
[id(0x000009bd), helpcontext(0x000109bd)]
		void ExportAsFixedFormat(
			[in]XlFixedFormatType Type,
			[in, optional]VARIANT Filename,
			[in, optional]VARIANT Quality,
			[in, optional]VARIANT IncludeDocProperties,
			[in, optional]VARIANT IgnorePrintAreas,
			[in, optional]VARIANT From,
			[in, optional]VARIANT To,
			[in, optional]VARIANT OpenAfterPublish,
			[in, optional]VARIANT FixedFormatExtClassPtr);
[id(0x000009c3), propget, helpcontext(0x000109c3)]
		VARIANT CountLarge();
[id(0x0000093c), helpcontext(0x0001093c)]
		VARIANT CalculateRowMajorOrder();
};
'!
!ExcelRange categoriesForClass!COM-Interfaces!Excel-Dispinterfaces! !
!ExcelRange methodsFor!

__printOut
	"Answer the <VARIANT> result of invoking the __PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 __printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified!

__printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate
	"Answer the <VARIANT> result of invoking the __PrintOut() method of the COM object."

	^(self invokeId: 905 withArguments:
			((Array new: 7)
				basicAt: 1 put: from;
				basicAt: 2 put: to;
				basicAt: 3 put: copies;
				basicAt: 4 put: preview;
				basicAt: 5 put: activePrinter;
				basicAt: 6 put: printToFile;
				basicAt: 7 put: collate;
				yourself))
!

_default
	"Answer the <variant> value of the '_Default' property of the receiver.
		VARIANT _Default"

	^self
		 _default: VARIANT unspecified
		 columnIndex: VARIANT unspecified!

_default: rowIndex columnIndex: columnIndex
	"Answer the <variant> value of the '_Default' property of the receiver.
		VARIANT _Default"

	^(self getPropertyId: 0
		 withArguments: ((Array new: 2)
				basicAt: 1 put: rowIndex;
				basicAt: 2 put: columnIndex;
				yourself)
		)
!

_default: rowIndex columnIndex: columnIndex _: arg3
	"Set the '_Default' property of the receiver to the <variant> value of the argument.
		void _Default"

	self setPropertyId: 0 
		withArguments: ((Array new: 2)
				basicAt: 1 put: rowIndex;
				basicAt: 2 put: columnIndex;
				yourself)
		value: arg3
!

_pasteSpecial
	"Answer the <VARIANT> result of invoking the _PasteSpecial() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _pasteSpecial: -4104
		 operation: -4142
		 skipBlanks: VARIANT unspecified
		 transpose: VARIANT unspecified!

_pasteSpecial: paste operation: operation skipBlanks: skipBlanks transpose: transpose
	"Answer the <VARIANT> result of invoking the _PasteSpecial() method of the COM object."

	^(self invokeId: 1027 withArguments:
			((Array new: 4)
				basicAt: 1 put: paste;
				basicAt: 2 put: operation;
				basicAt: 3 put: skipBlanks;
				basicAt: 4 put: transpose;
				yourself))
!

_printOut
	"Answer the <VARIANT> result of invoking the _PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 _printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified
		 prToFileName: VARIANT unspecified!

_printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName
	"Answer the <VARIANT> result of invoking the _PrintOut() method of the COM object."

	^(self invokeId: 1772 withArguments:
			((Array new: 8)
				basicAt: 1 put: from;
				basicAt: 2 put: to;
				basicAt: 3 put: copies;
				basicAt: 4 put: preview;
				basicAt: 5 put: activePrinter;
				basicAt: 6 put: printToFile;
				basicAt: 7 put: collate;
				basicAt: 8 put: prToFileName;
				yourself))
!

activate
	"Answer the <VARIANT> result of invoking the Activate() method of the COM object."

	^(self invokeId: 304)
!

addComment
	"Answer the <ExcelComment> result of invoking the AddComment() method of the COM object.
	Default values are passed for all optional parameters."

	^self addComment: VARIANT unspecified!

addComment: text
	"Answer the <ExcelComment> result of invoking the AddComment() method of the COM object."

	^ExcelComment attachInterface: (self invokeId: 1389 with: text)
!

addIndent
	"Answer the <variant> value of the 'AddIndent' property of the receiver.
		VARIANT AddIndent"

	^(self getPropertyId: 1063)
!

addIndent: arg1
	"Set the 'AddIndent' property of the receiver to the <variant> value of the argument.
		void AddIndent"

	self setPropertyId: 1063 value: arg1
!

address
	"Answer the <bstr> value of the 'Address' property of the receiver.
		BSTR Address"

	^self
		 address: VARIANT unspecified
		 columnAbsolute: VARIANT unspecified
		 referenceStyle: 1
		 external: VARIANT unspecified
		 relativeTo: VARIANT unspecified!

address: rowAbsolute columnAbsolute: columnAbsolute referenceStyle: referenceStyle external: external relativeTo: relativeTo
	"Answer the <bstr> value of the 'Address' property of the receiver.
		BSTR Address"

	^(self getPropertyId: 236
		 withArguments: ((Array new: 5)
				basicAt: 1 put: rowAbsolute;
				basicAt: 2 put: columnAbsolute;
				basicAt: 3 put: referenceStyle;
				basicAt: 4 put: external;
				basicAt: 5 put: relativeTo;
				yourself)
		)
!

addressLocal
	"Answer the <bstr> value of the 'AddressLocal' property of the receiver.
		BSTR AddressLocal"

	^self
		 addressLocal: VARIANT unspecified
		 columnAbsolute: VARIANT unspecified
		 referenceStyle: 1
		 external: VARIANT unspecified
		 relativeTo: VARIANT unspecified!

addressLocal: rowAbsolute columnAbsolute: columnAbsolute referenceStyle: referenceStyle external: external relativeTo: relativeTo
	"Answer the <bstr> value of the 'AddressLocal' property of the receiver.
		BSTR AddressLocal"

	^(self getPropertyId: 437
		 withArguments: ((Array new: 5)
				basicAt: 1 put: rowAbsolute;
				basicAt: 2 put: columnAbsolute;
				basicAt: 3 put: referenceStyle;
				basicAt: 4 put: external;
				basicAt: 5 put: relativeTo;
				yourself)
		)
!

advancedFilter: action
	"Answer the <VARIANT> result of invoking the AdvancedFilter() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 advancedFilter: action
		 criteriaRange: VARIANT unspecified
		 copyToRange: VARIANT unspecified
		 unique: VARIANT unspecified!

advancedFilter: action criteriaRange: criteriaRange copyToRange: copyToRange unique: unique
	"Answer the <VARIANT> result of invoking the AdvancedFilter() method of the COM object."

	^(self invokeId: 876 withArguments:
			((Array new: 4)
				basicAt: 1 put: action;
				basicAt: 2 put: criteriaRange;
				basicAt: 3 put: copyToRange;
				basicAt: 4 put: unique;
				yourself))
!

allowEdit
	"Answer the <varbool> value of the 'AllowEdit' property of the receiver.
		VARIANT_BOOL AllowEdit"

	^(self getPropertyId: 2020)
!

application
	"Answer the <Excel_Application> value of the 'Application' property of the receiver.
		Application* Application"

	^Excel_Application attachInterface: (self getPropertyId: 148)
!

applyNames
	"Answer the <VARIANT> result of invoking the ApplyNames() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 applyNames: VARIANT unspecified
		 ignoreRelativeAbsolute: VARIANT unspecified
		 useRowColumnNames: VARIANT unspecified
		 omitColumn: VARIANT unspecified
		 omitRow: VARIANT unspecified
		 order: 1
		 appendLast: VARIANT unspecified!

applyNames: names ignoreRelativeAbsolute: ignoreRelativeAbsolute useRowColumnNames: useRowColumnNames omitColumn: omitColumn omitRow: omitRow order: order appendLast: appendLast
	"Answer the <VARIANT> result of invoking the ApplyNames() method of the COM object."

	^(self invokeId: 441 withArguments:
			((Array new: 7)
				basicAt: 1 put: names;
				basicAt: 2 put: ignoreRelativeAbsolute;
				basicAt: 3 put: useRowColumnNames;
				basicAt: 4 put: omitColumn;
				basicAt: 5 put: omitRow;
				basicAt: 6 put: order;
				basicAt: 7 put: appendLast;
				yourself))
!

applyOutlineStyles
	"Answer the <VARIANT> result of invoking the ApplyOutlineStyles() method of the COM object."

	^(self invokeId: 448)
!

areas
	"Answer the <ExcelAreas> value of the 'Areas' property of the receiver.
		Areas* Areas"

	^ExcelAreas attachInterface: (self getPropertyId: 568)
!

autoComplete: string
	"Answer the <BSTR> result of invoking the AutoComplete() method of the COM object."

	^(self invokeId: 1185 with: string)
!

autoFill: destination
	"Answer the <VARIANT> result of invoking the AutoFill() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 autoFill: destination
		 type: 0!

autoFill: destination type: type
	"Answer the <VARIANT> result of invoking the AutoFill() method of the COM object."

	^(self invokeId: 449 with: destination with: type)
!

autoFilter
	"Answer the <VARIANT> result of invoking the AutoFilter() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 autoFilter: VARIANT unspecified
		 criteria1: VARIANT unspecified
		 operator: 1
		 criteria2: VARIANT unspecified
		 visibleDropDown: VARIANT unspecified!

autoFilter: field criteria1: criteria1 operator: operator criteria2: criteria2 visibleDropDown: visibleDropDown
	"Answer the <VARIANT> result of invoking the AutoFilter() method of the COM object."

	^(self invokeId: 793 withArguments:
			((Array new: 5)
				basicAt: 1 put: field;
				basicAt: 2 put: criteria1;
				basicAt: 3 put: operator;
				basicAt: 4 put: criteria2;
				basicAt: 5 put: visibleDropDown;
				yourself))
!

autoFit
	"Answer the <VARIANT> result of invoking the AutoFit() method of the COM object."

	^(self invokeId: 237)
!

autoFormat
	"Answer the <VARIANT> result of invoking the AutoFormat() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 autoFormat: 1
		 number: VARIANT unspecified
		 font: VARIANT unspecified
		 alignment: VARIANT unspecified
		 border: VARIANT unspecified
		 pattern: VARIANT unspecified
		 width: VARIANT unspecified!

autoFormat: format number: number font: font alignment: alignment border: border pattern: pattern width: width
	"Answer the <VARIANT> result of invoking the AutoFormat() method of the COM object."

	^(self invokeId: 114 withArguments:
			((Array new: 7)
				basicAt: 1 put: format;
				basicAt: 2 put: number;
				basicAt: 3 put: font;
				basicAt: 4 put: alignment;
				basicAt: 5 put: border;
				basicAt: 6 put: pattern;
				basicAt: 7 put: width;
				yourself))
!

autoOutline
	"Answer the <VARIANT> result of invoking the AutoOutline() method of the COM object."

	^(self invokeId: 1036)
!

borderAround
	"Answer the <VARIANT> result of invoking the BorderAround() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 borderAround: VARIANT unspecified
		 weight: 2
		 colorIndex: -4105
		 color: VARIANT unspecified!

borderAround: lineStyle weight: weight colorIndex: colorIndex color: color
	"Answer the <VARIANT> result of invoking the BorderAround() method of the COM object."

	^(self invokeId: 1067 withArguments:
			((Array new: 4)
				basicAt: 1 put: lineStyle;
				basicAt: 2 put: weight;
				basicAt: 3 put: colorIndex;
				basicAt: 4 put: color;
				yourself))
!

borders
	"Answer the <ExcelBorders> value of the 'Borders' property of the receiver.
		Borders* Borders"

	^ExcelBorders attachInterface: (self getPropertyId: 435)
!

calculate
	"Answer the <VARIANT> result of invoking the Calculate() method of the COM object."

	^(self invokeId: 279)
!

calculateRowMajorOrder
	"Answer the <VARIANT> result of invoking the CalculateRowMajorOrder() method of the COM object."

	^(self invokeId: 2364)
!

cells
	"Answer the <ExcelRange> value of the 'Cells' property of the receiver.
		Range* Cells"

	^ExcelRange attachInterface: (self getPropertyId: 238)
!

characters
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver.
		Characters* Characters"

	^self
		 characters: VARIANT unspecified
		 length: VARIANT unspecified!

characters: start length: length
	"Answer the <ExcelCharacters> value of the 'Characters' property of the receiver.
		Characters* Characters"

	^ExcelCharacters attachInterface: (self getPropertyId: 603
		 withArguments: ((Array new: 2)
				basicAt: 1 put: start;
				basicAt: 2 put: length;
				yourself)
		)
!

checkSpelling
	"Answer the <VARIANT> result of invoking the CheckSpelling() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 checkSpelling: VARIANT unspecified
		 ignoreUppercase: VARIANT unspecified
		 alwaysSuggest: VARIANT unspecified
		 spellLang: VARIANT unspecified!

checkSpelling: customDictionary ignoreUppercase: ignoreUppercase alwaysSuggest: alwaysSuggest spellLang: spellLang
	"Answer the <VARIANT> result of invoking the CheckSpelling() method of the COM object."

	^(self invokeId: 505 withArguments:
			((Array new: 4)
				basicAt: 1 put: customDictionary;
				basicAt: 2 put: ignoreUppercase;
				basicAt: 3 put: alwaysSuggest;
				basicAt: 4 put: spellLang;
				yourself))
!

clear
	"Answer the <VARIANT> result of invoking the Clear() method of the COM object."

	^(self invokeId: 111)
!

clearComments
	"Invoke the ClearComments() method of the COM object."

	(self invokeId: 1390)
!

clearContents
	"Answer the <VARIANT> result of invoking the ClearContents() method of the COM object."

	^(self invokeId: 113)
!

clearFormats
	"Answer the <VARIANT> result of invoking the ClearFormats() method of the COM object."

	^(self invokeId: 112)
!

clearNotes
	"Answer the <VARIANT> result of invoking the ClearNotes() method of the COM object."

	^(self invokeId: 239)
!

clearOutline
	"Answer the <VARIANT> result of invoking the ClearOutline() method of the COM object."

	^(self invokeId: 1037)
!

column
	"Answer the <sdword> value of the 'Column' property of the receiver.
		long Column"

	^(self getPropertyId: 240)
!

columnDifferences: comparison
	"Answer the <ExcelRange> result of invoking the ColumnDifferences() method of the COM object."

	^ExcelRange attachInterface: (self invokeId: 510 with: comparison)
!

columns
	"Answer the <ExcelRange> value of the 'Columns' property of the receiver.
		Range* Columns"

	^ExcelRange attachInterface: (self getPropertyId: 241)
!

columnWidth
	"Answer the <variant> value of the 'ColumnWidth' property of the receiver.
		VARIANT ColumnWidth"

	^(self getPropertyId: 242)
!

columnWidth: arg1
	"Set the 'ColumnWidth' property of the receiver to the <variant> value of the argument.
		void ColumnWidth"

	self setPropertyId: 242 value: arg1
!

comment
	"Answer the <ExcelComment> value of the 'Comment' property of the receiver.
		Comment* Comment"

	^ExcelComment attachInterface: (self getPropertyId: 910)
!

consolidate
	"Answer the <VARIANT> result of invoking the Consolidate() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 consolidate: VARIANT unspecified
		 function: VARIANT unspecified
		 topRow: VARIANT unspecified
		 leftColumn: VARIANT unspecified
		 createLinks: VARIANT unspecified!

consolidate: sources function: function topRow: topRow leftColumn: leftColumn createLinks: createLinks
	"Answer the <VARIANT> result of invoking the Consolidate() method of the COM object."

	^(self invokeId: 482 withArguments:
			((Array new: 5)
				basicAt: 1 put: sources;
				basicAt: 2 put: function;
				basicAt: 3 put: topRow;
				basicAt: 4 put: leftColumn;
				basicAt: 5 put: createLinks;
				yourself))
!

copy
	"Answer the <VARIANT> result of invoking the Copy() method of the COM object.
	Default values are passed for all optional parameters."

	^self copy: VARIANT unspecified!

copy: destination
	"Answer the <VARIANT> result of invoking the Copy() method of the COM object."

	^(self invokeId: 551 with: destination)
!

copyFromRecordset: data
	"Answer the <SDWORD> result of invoking the CopyFromRecordset() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 copyFromRecordset: data
		 maxRows: VARIANT unspecified
		 maxColumns: VARIANT unspecified!

copyFromRecordset: data maxRows: maxRows maxColumns: maxColumns
	"Answer the <SDWORD> result of invoking the CopyFromRecordset() method of the COM object."

	^(self invokeId: 1152 withArguments:
			((Array new: 3)
				basicAt: 1 put: data;
				basicAt: 2 put: maxRows;
				basicAt: 3 put: maxColumns;
				yourself))
!

copyPicture
	"Answer the <VARIANT> result of invoking the CopyPicture() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 copyPicture: 1
		 format: -4147!

copyPicture: appearance format: format
	"Answer the <VARIANT> result of invoking the CopyPicture() method of the COM object."

	^(self invokeId: 213 with: appearance with: format)
!

count
	"Answer the <sdword> value of the 'Count' property of the receiver.
		long Count"

	^(self getPropertyId: 118)
!

countLarge
	"Answer the <variant> value of the 'CountLarge' property of the receiver.
		VARIANT CountLarge"

	^(self getPropertyId: 2499)
!

createNames
	"Answer the <VARIANT> result of invoking the CreateNames() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 createNames: VARIANT unspecified
		 left: VARIANT unspecified
		 bottom: VARIANT unspecified
		 right: VARIANT unspecified!

createNames: top left: left bottom: bottom right: right
	"Answer the <VARIANT> result of invoking the CreateNames() method of the COM object."

	^(self invokeId: 457 withArguments:
			((Array new: 4)
				basicAt: 1 put: top;
				basicAt: 2 put: left;
				basicAt: 3 put: bottom;
				basicAt: 4 put: right;
				yourself))
!

createPublisher
	"Answer the <VARIANT> result of invoking the CreatePublisher() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 createPublisher: VARIANT unspecified
		 appearance: 1
		 containsPICT: VARIANT unspecified
		 containsBIFF: VARIANT unspecified
		 containsRTF: VARIANT unspecified
		 containsVALU: VARIANT unspecified!

createPublisher: edition appearance: appearance containsPICT: containsPICT containsBIFF: containsBIFF containsRTF: containsRTF containsVALU: containsVALU
	"Answer the <VARIANT> result of invoking the CreatePublisher() method of the COM object."

	^(self invokeId: 458 withArguments:
			((Array new: 6)
				basicAt: 1 put: edition;
				basicAt: 2 put: appearance;
				basicAt: 3 put: containsPICT;
				basicAt: 4 put: containsBIFF;
				basicAt: 5 put: containsRTF;
				basicAt: 6 put: containsVALU;
				yourself))
!

creator
	"Answer the <sdword> value of the 'Creator' property of the receiver.
		XlCreator Creator"

	^(self getPropertyId: 149)
!

currentArray
	"Answer the <ExcelRange> value of the 'CurrentArray' property of the receiver.
		Range* CurrentArray"

	^ExcelRange attachInterface: (self getPropertyId: 501)
!

currentRegion
	"Answer the <ExcelRange> value of the 'CurrentRegion' property of the receiver.
		Range* CurrentRegion"

	^ExcelRange attachInterface: (self getPropertyId: 243)
!

cut
	"Answer the <VARIANT> result of invoking the Cut() method of the COM object.
	Default values are passed for all optional parameters."

	^self cut: VARIANT unspecified!

cut: destination
	"Answer the <VARIANT> result of invoking the Cut() method of the COM object."

	^(self invokeId: 565 with: destination)
!

dataSeries
	"Answer the <VARIANT> result of invoking the DataSeries() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 dataSeries: VARIANT unspecified
		 type: -4132
		 date: 1
		 step: VARIANT unspecified
		 stop: VARIANT unspecified
		 trend: VARIANT unspecified!

dataSeries: rowcol type: type date: date step: step stop: stop trend: trend
	"Answer the <VARIANT> result of invoking the DataSeries() method of the COM object."

	^(self invokeId: 464 withArguments:
			((Array new: 6)
				basicAt: 1 put: rowcol;
				basicAt: 2 put: type;
				basicAt: 3 put: date;
				basicAt: 4 put: step;
				basicAt: 5 put: stop;
				basicAt: 6 put: trend;
				yourself))
!

delete
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object.
	Default values are passed for all optional parameters."

	^self delete: VARIANT unspecified!

delete: shift
	"Answer the <VARIANT> result of invoking the Delete() method of the COM object."

	^(self invokeId: 117 with: shift)
!

dependents_
	"Answer the <ExcelRange> value of the 'Dependents' property of the receiver.
		Range* Dependents"

	^ExcelRange attachInterface: (self getPropertyId: 543)
!

dialogBox
	"Answer the <VARIANT> result of invoking the DialogBox() method of the COM object."

	^(self invokeId: 245)
!

directDependents
	"Answer the <ExcelRange> value of the 'DirectDependents' property of the receiver.
		Range* DirectDependents"

	^ExcelRange attachInterface: (self getPropertyId: 545)
!

directPrecedents
	"Answer the <ExcelRange> value of the 'DirectPrecedents' property of the receiver.
		Range* DirectPrecedents"

	^ExcelRange attachInterface: (self getPropertyId: 546)
!

dirty
	"Invoke the Dirty() method of the COM object."

	(self invokeId: 2014)
!

editionOptions: type option: option
	"Answer the <VARIANT> result of invoking the EditionOptions() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 editionOptions: type
		 option: option
		 name: VARIANT unspecified
		 reference: VARIANT unspecified
		 appearance: 1
		 chartSize: 1
		 format: VARIANT unspecified!

editionOptions: type option: option name: name reference: reference appearance: appearance chartSize: chartSize format: format
	"Answer the <VARIANT> result of invoking the EditionOptions() method of the COM object."

	^(self invokeId: 1131 withArguments:
			((Array new: 7)
				basicAt: 1 put: type;
				basicAt: 2 put: option;
				basicAt: 3 put: name;
				basicAt: 4 put: reference;
				basicAt: 5 put: appearance;
				basicAt: 6 put: chartSize;
				basicAt: 7 put: format;
				yourself))
!

end: direction
	"Answer the <ExcelRange> value of the 'End' property of the receiver.
		Range* End"

	^ExcelRange attachInterface: (self getPropertyId: 500 item: direction)
!

entireColumn
	"Answer the <ExcelRange> value of the 'EntireColumn' property of the receiver.
		Range* EntireColumn"

	^ExcelRange attachInterface: (self getPropertyId: 246)
!

entireRow
	"Answer the <ExcelRange> value of the 'EntireRow' property of the receiver.
		Range* EntireRow"

	^ExcelRange attachInterface: (self getPropertyId: 247)
!

errors
	"Answer the <ExcelErrors> value of the 'Errors' property of the receiver.
		Errors* Errors"

	^ExcelErrors attachInterface: (self getPropertyId: 2015)
!

exportAsFixedFormat: type
	"Invoke the ExportAsFixedFormat() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 exportAsFixedFormat: type
		 filename: VARIANT unspecified
		 quality: VARIANT unspecified
		 includeDocProperties: VARIANT unspecified
		 ignorePrintAreas: VARIANT unspecified
		 from: VARIANT unspecified
		 to: VARIANT unspecified
		 openAfterPublish: VARIANT unspecified
		 fixedFormatExtClassPtr: VARIANT unspecified!

exportAsFixedFormat: type filename: filename quality: quality includeDocProperties: includeDocProperties ignorePrintAreas: ignorePrintAreas from: from to: to openAfterPublish: openAfterPublish fixedFormatExtClassPtr: fixedFormatExtClassPtr
	"Invoke the ExportAsFixedFormat() method of the COM object."

	(self invokeId: 2493 withArguments:
			((Array new: 9)
				basicAt: 1 put: type;
				basicAt: 2 put: filename;
				basicAt: 3 put: quality;
				basicAt: 4 put: includeDocProperties;
				basicAt: 5 put: ignorePrintAreas;
				basicAt: 6 put: from;
				basicAt: 7 put: to;
				basicAt: 8 put: openAfterPublish;
				basicAt: 9 put: fixedFormatExtClassPtr;
				yourself))
!

fillDown
	"Answer the <VARIANT> result of invoking the FillDown() method of the COM object."

	^(self invokeId: 248)
!

fillLeft
	"Answer the <VARIANT> result of invoking the FillLeft() method of the COM object."

	^(self invokeId: 249)
!

fillRight
	"Answer the <VARIANT> result of invoking the FillRight() method of the COM object."

	^(self invokeId: 250)
!

fillUp
	"Answer the <VARIANT> result of invoking the FillUp() method of the COM object."

	^(self invokeId: 251)
!

find: what
	"Answer the <ExcelRange> result of invoking the Find() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 find: what
		 after: VARIANT unspecified
		 lookIn: VARIANT unspecified
		 lookAt: VARIANT unspecified
		 searchOrder: VARIANT unspecified
		 searchDirection: 1
		 matchCase: VARIANT unspecified
		 matchByte: VARIANT unspecified
		 searchFormat: VARIANT unspecified!

find: what after: after lookIn: lookIn lookAt: lookAt searchOrder: searchOrder searchDirection: searchDirection matchCase: matchCase matchByte: matchByte searchFormat: searchFormat
	"Answer the <ExcelRange> result of invoking the Find() method of the COM object."

	^ExcelRange attachInterface: (self invokeId: 398 withArguments:
			((Array new: 9)
				basicAt: 1 put: what;
				basicAt: 2 put: after;
				basicAt: 3 put: lookIn;
				basicAt: 4 put: lookAt;
				basicAt: 5 put: searchOrder;
				basicAt: 6 put: searchDirection;
				basicAt: 7 put: matchCase;
				basicAt: 8 put: matchByte;
				basicAt: 9 put: searchFormat;
				yourself))
!

findNext
	"Answer the <ExcelRange> result of invoking the FindNext() method of the COM object.
	Default values are passed for all optional parameters."

	^self findNext: VARIANT unspecified!

findNext: after
	"Answer the <ExcelRange> result of invoking the FindNext() method of the COM object."

	^ExcelRange attachInterface: (self invokeId: 399 with: after)
!

findPrevious
	"Answer the <ExcelRange> result of invoking the FindPrevious() method of the COM object.
	Default values are passed for all optional parameters."

	^self findPrevious: VARIANT unspecified!

findPrevious: after
	"Answer the <ExcelRange> result of invoking the FindPrevious() method of the COM object."

	^ExcelRange attachInterface: (self invokeId: 400 with: after)
!

font
	"Answer the <ExcelFont> value of the 'Font' property of the receiver.
		Font* Font"

	^ExcelFont attachInterface: (self getPropertyId: 146)
!

formatConditions
	"Answer the <ExcelFormatConditions> value of the 'FormatConditions' property of the receiver.
		FormatConditions* FormatConditions"

	^ExcelFormatConditions attachInterface: (self getPropertyId: 1392)
!

formula
	"Answer the <variant> value of the 'Formula' property of the receiver.
		VARIANT Formula"

	^(self getPropertyId: 261)
!

formula: arg1
	"Set the 'Formula' property of the receiver to the <variant> value of the argument.
		void Formula"

	self setPropertyId: 261 value: arg1
!

formulaArray
	"Answer the <variant> value of the 'FormulaArray' property of the receiver.
		VARIANT FormulaArray"

	^(self getPropertyId: 586)
!

formulaArray: arg1
	"Set the 'FormulaArray' property of the receiver to the <variant> value of the argument.
		void FormulaArray"

	self setPropertyId: 586 value: arg1
!

formulaHidden
	"Answer the <variant> value of the 'FormulaHidden' property of the receiver.
		VARIANT FormulaHidden"

	^(self getPropertyId: 262)
!

formulaHidden: arg1
	"Set the 'FormulaHidden' property of the receiver to the <variant> value of the argument.
		void FormulaHidden"

	self setPropertyId: 262 value: arg1
!

formulaLabel
	"Answer the <sdword> value of the 'FormulaLabel' property of the receiver.
		XlFormulaLabel FormulaLabel"

	^(self getPropertyId: 1380)
!

formulaLabel: arg1
	"Set the 'FormulaLabel' property of the receiver to the <sdword> value of the argument.
		void FormulaLabel"

	self setPropertyId: 1380 value: arg1
!

formulaLocal
	"Answer the <variant> value of the 'FormulaLocal' property of the receiver.
		VARIANT FormulaLocal"

	^(self getPropertyId: 263)
!

formulaLocal: arg1
	"Set the 'FormulaLocal' property of the receiver to the <variant> value of the argument.
		void FormulaLocal"

	self setPropertyId: 263 value: arg1
!

formulaR1C1
	"Answer the <variant> value of the 'FormulaR1C1' property of the receiver.
		VARIANT FormulaR1C1"

	^(self getPropertyId: 264)
!

formulaR1C1: arg1
	"Set the 'FormulaR1C1' property of the receiver to the <variant> value of the argument.
		void FormulaR1C1"

	self setPropertyId: 264 value: arg1
!

formulaR1C1Local
	"Answer the <variant> value of the 'FormulaR1C1Local' property of the receiver.
		VARIANT FormulaR1C1Local"

	^(self getPropertyId: 265)
!

formulaR1C1Local: arg1
	"Set the 'FormulaR1C1Local' property of the receiver to the <variant> value of the argument.
		void FormulaR1C1Local"

	self setPropertyId: 265 value: arg1
!

functionWizard
	"Answer the <VARIANT> result of invoking the FunctionWizard() method of the COM object."

	^(self invokeId: 571)
!

goalSeek: goal changingCell: changingCell
	"Answer the <VARIANT_BOOL> result of invoking the GoalSeek() method of the COM object."

	^(self invokeId: 472 with: goal with: changingCell)
!

group
	"Answer the <VARIANT> result of invoking the Group() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 group: VARIANT unspecified
		 end: VARIANT unspecified
		 by: VARIANT unspecified
		 periods: VARIANT unspecified!

group: start end: end by: by periods: periods
	"Answer the <VARIANT> result of invoking the Group() method of the COM object."

	^(self invokeId: 46 withArguments:
			((Array new: 4)
				basicAt: 1 put: start;
				basicAt: 2 put: end;
				basicAt: 3 put: by;
				basicAt: 4 put: periods;
				yourself))
!

hasArray
	"Answer the <variant> value of the 'HasArray' property of the receiver.
		VARIANT HasArray"

	^(self getPropertyId: 266)
!

hasFormula
	"Answer the <variant> value of the 'HasFormula' property of the receiver.
		VARIANT HasFormula"

	^(self getPropertyId: 267)
!

height
	"Answer the <variant> value of the 'Height' property of the receiver.
		VARIANT Height"

	^(self getPropertyId: 123)
!

hidden
	"Answer the <variant> value of the 'Hidden' property of the receiver.
		VARIANT Hidden"

	^(self getPropertyId: 268)
!

hidden: arg1
	"Set the 'Hidden' property of the receiver to the <variant> value of the argument.
		void Hidden"

	self setPropertyId: 268 value: arg1
!

horizontalAlignment
	"Answer the <variant> value of the 'HorizontalAlignment' property of the receiver.
		VARIANT HorizontalAlignment"

	^(self getPropertyId: 136)
!

horizontalAlignment: arg1
	"Set the 'HorizontalAlignment' property of the receiver to the <variant> value of the argument.
		void HorizontalAlignment"

	self setPropertyId: 136 value: arg1
!

hyperlinks
	"Answer the <ExcelHyperlinks> value of the 'Hyperlinks' property of the receiver.
		Hyperlinks* Hyperlinks"

	^ExcelHyperlinks attachInterface: (self getPropertyId: 1393)
!

id
	"Answer the <bstr> value of the 'ID' property of the receiver.
		BSTR ID"

	^(self getPropertyId: 1813)
!

id: arg1
	"Set the 'ID' property of the receiver to the <bstr> value of the argument.
		void ID"

	self setPropertyId: 1813 value: arg1
!

indentLevel
	"Answer the <variant> value of the 'IndentLevel' property of the receiver.
		VARIANT IndentLevel"

	^(self getPropertyId: 201)
!

indentLevel: arg1
	"Set the 'IndentLevel' property of the receiver to the <variant> value of the argument.
		void IndentLevel"

	self setPropertyId: 201 value: arg1
!

insert
	"Answer the <VARIANT> result of invoking the Insert() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 insert: VARIANT unspecified
		 copyOrigin: VARIANT unspecified!

insert: shift copyOrigin: copyOrigin
	"Answer the <VARIANT> result of invoking the Insert() method of the COM object."

	^(self invokeId: 252 with: shift with: copyOrigin)
!

insertIndent: insertAmount
	"Invoke the InsertIndent() method of the COM object."

	(self invokeId: 1381 with: insertAmount)
!

interior
	"Answer the <ExcelInterior> value of the 'Interior' property of the receiver.
		Interior* Interior"

	^ExcelInterior attachInterface: (self getPropertyId: 129)
!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^true!

item: rowIndex
	"Answer the <variant> value of the 'Item' property of the receiver.
		VARIANT Item"

	^self
		 item: rowIndex
		 columnIndex: VARIANT unspecified!

item: rowIndex columnIndex: columnIndex
	"Answer the <variant> value of the 'Item' property of the receiver.
		VARIANT Item"

	^(self getPropertyId: 170
		 withArguments: ((Array new: 2)
				basicAt: 1 put: rowIndex;
				basicAt: 2 put: columnIndex;
				yourself)
		)
!

item: rowIndex columnIndex: columnIndex _: arg3
	"Set the 'Item' property of the receiver to the <variant> value of the argument.
		void Item"

	self setPropertyId: 170 
		withArguments: ((Array new: 2)
				basicAt: 1 put: rowIndex;
				basicAt: 2 put: columnIndex;
				yourself)
		value: arg3
!

justify
	"Answer the <VARIANT> result of invoking the Justify() method of the COM object."

	^(self invokeId: 495)
!

left
	"Answer the <variant> value of the 'Left' property of the receiver.
		VARIANT Left"

	^(self getPropertyId: 127)
!

listHeaderRows
	"Answer the <sdword> value of the 'ListHeaderRows' property of the receiver.
		long ListHeaderRows"

	^(self getPropertyId: 1187)
!

listNames
	"Answer the <VARIANT> result of invoking the ListNames() method of the COM object."

	^(self invokeId: 253)
!

listObject
	"Answer the <ExcelListObject> value of the 'ListObject' property of the receiver.
		ListObject* ListObject"

	^ExcelListObject attachInterface: (self getPropertyId: 2257)
!

locationInTable
	"Answer the <sdword> value of the 'LocationInTable' property of the receiver.
		XlLocationInTable LocationInTable"

	^(self getPropertyId: 691)
!

locked
	"Answer the <variant> value of the 'Locked' property of the receiver.
		VARIANT Locked"

	^(self getPropertyId: 269)
!

locked: arg1
	"Set the 'Locked' property of the receiver to the <variant> value of the argument.
		void Locked"

	self setPropertyId: 269 value: arg1
!

mdx
	"Answer the <bstr> value of the 'MDX' property of the receiver.
		BSTR MDX"

	^(self getPropertyId: 2123)
!

merge
	"Invoke the Merge() method of the COM object.
	Default values are passed for all optional parameters."

	self merge: VARIANT unspecified!

merge: across
	"Invoke the Merge() method of the COM object."

	(self invokeId: 564 with: across)
!

mergeArea
	"Answer the <ExcelRange> value of the 'MergeArea' property of the receiver.
		Range* MergeArea"

	^ExcelRange attachInterface: (self getPropertyId: 1385)
!

mergeCells
	"Answer the <variant> value of the 'MergeCells' property of the receiver.
		VARIANT MergeCells"

	^(self getPropertyId: 208)
!

mergeCells: arg1
	"Set the 'MergeCells' property of the receiver to the <variant> value of the argument.
		void MergeCells"

	self setPropertyId: 208 value: arg1
!

name
	"Answer the <variant> value of the 'Name' property of the receiver.
		VARIANT Name"

	^(self getPropertyId: 110)
!

name: arg1
	"Set the 'Name' property of the receiver to the <variant> value of the argument.
		void Name"

	self setPropertyId: 110 value: arg1
!

navigateArrow
	"Answer the <VARIANT> result of invoking the NavigateArrow() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 navigateArrow: VARIANT unspecified
		 arrowNumber: VARIANT unspecified
		 linkNumber: VARIANT unspecified!

navigateArrow: towardPrecedent arrowNumber: arrowNumber linkNumber: linkNumber
	"Answer the <VARIANT> result of invoking the NavigateArrow() method of the COM object."

	^(self invokeId: 1032 withArguments:
			((Array new: 3)
				basicAt: 1 put: towardPrecedent;
				basicAt: 2 put: arrowNumber;
				basicAt: 3 put: linkNumber;
				yourself))
!

next
	"Answer the <ExcelRange> value of the 'Next' property of the receiver.
		Range* Next"

	^ExcelRange attachInterface: (self getPropertyId: 502)
!

noteText
	"Answer the <BSTR> result of invoking the NoteText() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 noteText: VARIANT unspecified
		 start: VARIANT unspecified
		 length: VARIANT unspecified!

noteText: text start: start length: length
	"Answer the <BSTR> result of invoking the NoteText() method of the COM object."

	^(self invokeId: 1127 withArguments:
			((Array new: 3)
				basicAt: 1 put: text;
				basicAt: 2 put: start;
				basicAt: 3 put: length;
				yourself))
!

numberFormat
	"Answer the <variant> value of the 'NumberFormat' property of the receiver.
		VARIANT NumberFormat"

	^(self getPropertyId: 193)
!

numberFormat: arg1
	"Set the 'NumberFormat' property of the receiver to the <variant> value of the argument.
		void NumberFormat"

	self setPropertyId: 193 value: arg1
!

numberFormatLocal
	"Answer the <variant> value of the 'NumberFormatLocal' property of the receiver.
		VARIANT NumberFormatLocal"

	^(self getPropertyId: 1097)
!

numberFormatLocal: arg1
	"Set the 'NumberFormatLocal' property of the receiver to the <variant> value of the argument.
		void NumberFormatLocal"

	self setPropertyId: 1097 value: arg1
!

offset
	"Answer the <ExcelRange> value of the 'Offset' property of the receiver.
		Range* Offset"

	^self
		 offset: VARIANT unspecified
		 columnOffset: VARIANT unspecified!

offset: rowOffset columnOffset: columnOffset
	"Answer the <ExcelRange> value of the 'Offset' property of the receiver.
		Range* Offset"

	^ExcelRange attachInterface: (self getPropertyId: 254
		 withArguments: ((Array new: 2)
				basicAt: 1 put: rowOffset;
				basicAt: 2 put: columnOffset;
				yourself)
		)
!

orientation
	"Answer the <variant> value of the 'Orientation' property of the receiver.
		VARIANT Orientation"

	^(self getPropertyId: 134)
!

orientation: arg1
	"Set the 'Orientation' property of the receiver to the <variant> value of the argument.
		void Orientation"

	self setPropertyId: 134 value: arg1
!

outlineLevel
	"Answer the <variant> value of the 'OutlineLevel' property of the receiver.
		VARIANT OutlineLevel"

	^(self getPropertyId: 271)
!

outlineLevel: arg1
	"Set the 'OutlineLevel' property of the receiver to the <variant> value of the argument.
		void OutlineLevel"

	self setPropertyId: 271 value: arg1
!

pageBreak
	"Answer the <sdword> value of the 'PageBreak' property of the receiver.
		long PageBreak"

	^(self getPropertyId: 255)
!

pageBreak: arg1
	"Set the 'PageBreak' property of the receiver to the <sdword> value of the argument.
		void PageBreak"

	self setPropertyId: 255 value: arg1
!

parent
	"Answer the <IDispatch> value of the 'Parent' property of the receiver.
		IDispatch* Parent"

	^IDispatch attachInterface: (self getPropertyId: 150)
!

parse
	"Answer the <VARIANT> result of invoking the Parse() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 parse: VARIANT unspecified
		 destination: VARIANT unspecified!

parse: parseLine destination: destination
	"Answer the <VARIANT> result of invoking the Parse() method of the COM object."

	^(self invokeId: 477 with: parseLine with: destination)
!

pasteSpecial
	"Answer the <VARIANT> result of invoking the PasteSpecial() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 pasteSpecial: -4104
		 operation: -4142
		 skipBlanks: VARIANT unspecified
		 transpose: VARIANT unspecified!

pasteSpecial: paste operation: operation skipBlanks: skipBlanks transpose: transpose
	"Answer the <VARIANT> result of invoking the PasteSpecial() method of the COM object."

	^(self invokeId: 1928 withArguments:
			((Array new: 4)
				basicAt: 1 put: paste;
				basicAt: 2 put: operation;
				basicAt: 3 put: skipBlanks;
				basicAt: 4 put: transpose;
				yourself))
!

phonetic
	"Answer the <ExcelPhonetic> value of the 'Phonetic' property of the receiver.
		Phonetic* Phonetic"

	^ExcelPhonetic attachInterface: (self getPropertyId: 1391)
!

phonetics
	"Answer the <ExcelPhonetics> value of the 'Phonetics' property of the receiver.
		Phonetics* Phonetics"

	^ExcelPhonetics attachInterface: (self getPropertyId: 1811)
!

pivotCell
	"Answer the <ExcelPivotCell> value of the 'PivotCell' property of the receiver.
		PivotCell* PivotCell"

	^ExcelPivotCell attachInterface: (self getPropertyId: 2013)
!

pivotField
	"Answer the <ExcelPivotField> value of the 'PivotField' property of the receiver.
		PivotField* PivotField"

	^ExcelPivotField attachInterface: (self getPropertyId: 731)
!

pivotItem
	"Answer the <ExcelPivotItem> value of the 'PivotItem' property of the receiver.
		PivotItem* PivotItem"

	^ExcelPivotItem attachInterface: (self getPropertyId: 740)
!

pivotTable
	"Answer the <ExcelPivotTable> value of the 'PivotTable' property of the receiver.
		PivotTable* PivotTable"

	^ExcelPivotTable attachInterface: (self getPropertyId: 716)
!

precedents
	"Answer the <ExcelRange> value of the 'Precedents' property of the receiver.
		Range* Precedents"

	^ExcelRange attachInterface: (self getPropertyId: 544)
!

prefixCharacter
	"Answer the <variant> value of the 'PrefixCharacter' property of the receiver.
		VARIANT PrefixCharacter"

	^(self getPropertyId: 504)
!

previous
	"Answer the <ExcelRange> value of the 'Previous' property of the receiver.
		Range* Previous"

	^ExcelRange attachInterface: (self getPropertyId: 503)
!

printOut
	"Answer the <VARIANT> result of invoking the PrintOut() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 printOut: VARIANT unspecified
		 to: VARIANT unspecified
		 copies: VARIANT unspecified
		 preview: VARIANT unspecified
		 activePrinter: VARIANT unspecified
		 printToFile: VARIANT unspecified
		 collate: VARIANT unspecified
		 prToFileName: VARIANT unspecified!

printOut: from to: to copies: copies preview: preview activePrinter: activePrinter printToFile: printToFile collate: collate prToFileName: prToFileName
	"Answer the <VARIANT> result of invoking the PrintOut() method of the COM object."

	^(self invokeId: 2361 withArguments:
			((Array new: 8)
				basicAt: 1 put: from;
				basicAt: 2 put: to;
				basicAt: 3 put: copies;
				basicAt: 4 put: preview;
				basicAt: 5 put: activePrinter;
				basicAt: 6 put: printToFile;
				basicAt: 7 put: collate;
				basicAt: 8 put: prToFileName;
				yourself))
!

printPreview
	"Answer the <VARIANT> result of invoking the PrintPreview() method of the COM object.
	Default values are passed for all optional parameters."

	^self printPreview: VARIANT unspecified!

printPreview: enableChanges
	"Answer the <VARIANT> result of invoking the PrintPreview() method of the COM object."

	^(self invokeId: 281 with: enableChanges)
!

queryTable
	"Answer the <Excel_QueryTable> value of the 'QueryTable' property of the receiver.
		QueryTable* QueryTable"

	^Excel_QueryTable attachInterface: (self getPropertyId: 1386)
!

range: cell1
	"Answer the <ExcelRange> value of the 'Range' property of the receiver.
		Range* Range"

	^self
		 range: cell1
		 cell2: VARIANT unspecified!

range: cell1 cell2: cell2
	"Answer the <ExcelRange> value of the 'Range' property of the receiver.
		Range* Range"

	^ExcelRange attachInterface: (self getPropertyId: 197
		 withArguments: ((Array new: 2)
				basicAt: 1 put: cell1;
				basicAt: 2 put: cell2;
				yourself)
		)
!

readingOrder
	"Answer the <sdword> value of the 'ReadingOrder' property of the receiver.
		long ReadingOrder"

	^(self getPropertyId: 975)
!

readingOrder: arg1
	"Set the 'ReadingOrder' property of the receiver to the <sdword> value of the argument.
		void ReadingOrder"

	self setPropertyId: 975 value: arg1
!

removeDuplicates
	"Invoke the RemoveDuplicates() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 removeDuplicates: VARIANT unspecified
		 header: 2!

removeDuplicates: columns header: header
	"Invoke the RemoveDuplicates() method of the COM object."

	(self invokeId: 2492 with: columns with: header)
!

removeSubtotal
	"Answer the <VARIANT> result of invoking the RemoveSubtotal() method of the COM object."

	^(self invokeId: 883)
!

replace: what replacement: replacement
	"Answer the <VARIANT_BOOL> result of invoking the Replace() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 replace: what
		 replacement: replacement
		 lookAt: VARIANT unspecified
		 searchOrder: VARIANT unspecified
		 matchCase: VARIANT unspecified
		 matchByte: VARIANT unspecified
		 searchFormat: VARIANT unspecified
		 replaceFormat: VARIANT unspecified!

replace: what replacement: replacement lookAt: lookAt searchOrder: searchOrder matchCase: matchCase matchByte: matchByte searchFormat: searchFormat replaceFormat: replaceFormat
	"Answer the <VARIANT_BOOL> result of invoking the Replace() method of the COM object."

	^(self invokeId: 226 withArguments:
			((Array new: 8)
				basicAt: 1 put: what;
				basicAt: 2 put: replacement;
				basicAt: 3 put: lookAt;
				basicAt: 4 put: searchOrder;
				basicAt: 5 put: matchCase;
				basicAt: 6 put: matchByte;
				basicAt: 7 put: searchFormat;
				basicAt: 8 put: replaceFormat;
				yourself))
!

resize
	"Answer the <ExcelRange> value of the 'Resize' property of the receiver.
		Range* Resize"

	^self
		 resize: VARIANT unspecified
		 columnSize: VARIANT unspecified!

resize: rowSize columnSize: columnSize
	"Answer the <ExcelRange> value of the 'Resize' property of the receiver.
		Range* Resize"

	^ExcelRange attachInterface: (self getPropertyId: 256
		 withArguments: ((Array new: 2)
				basicAt: 1 put: rowSize;
				basicAt: 2 put: columnSize;
				yourself)
		)
!

row
	"Answer the <sdword> value of the 'Row' property of the receiver.
		long Row"

	^(self getPropertyId: 257)
!

rowDifferences: comparison
	"Answer the <ExcelRange> result of invoking the RowDifferences() method of the COM object."

	^ExcelRange attachInterface: (self invokeId: 511 with: comparison)
!

rowHeight
	"Answer the <variant> value of the 'RowHeight' property of the receiver.
		VARIANT RowHeight"

	^(self getPropertyId: 272)
!

rowHeight: arg1
	"Set the 'RowHeight' property of the receiver to the <variant> value of the argument.
		void RowHeight"

	self setPropertyId: 272 value: arg1
!

rows
	"Answer the <ExcelRange> value of the 'Rows' property of the receiver.
		Range* Rows"

	^ExcelRange attachInterface: (self getPropertyId: 258)
!

run
	"Answer the <VARIANT> result of invoking the Run() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 run: VARIANT unspecified
		 arg2: VARIANT unspecified
		 arg3: VARIANT unspecified
		 arg4: VARIANT unspecified
		 arg5: VARIANT unspecified
		 arg6: VARIANT unspecified
		 arg7: VARIANT unspecified
		 arg8: VARIANT unspecified
		 arg9: VARIANT unspecified
		 arg10: VARIANT unspecified
		 arg11: VARIANT unspecified
		 arg12: VARIANT unspecified
		 arg13: VARIANT unspecified
		 arg14: VARIANT unspecified
		 arg15: VARIANT unspecified
		 arg16: VARIANT unspecified
		 arg17: VARIANT unspecified
		 arg18: VARIANT unspecified
		 arg19: VARIANT unspecified
		 arg20: VARIANT unspecified
		 arg21: VARIANT unspecified
		 arg22: VARIANT unspecified
		 arg23: VARIANT unspecified
		 arg24: VARIANT unspecified
		 arg25: VARIANT unspecified
		 arg26: VARIANT unspecified
		 arg27: VARIANT unspecified
		 arg28: VARIANT unspecified
		 arg29: VARIANT unspecified
		 arg30: VARIANT unspecified!

run: arg1 arg2: arg2 arg3: arg3 arg4: arg4 arg5: arg5 arg6: arg6 arg7: arg7 arg8: arg8 arg9: arg9 arg10: arg10 arg11: arg11 arg12: arg12 arg13: arg13 arg14: arg14 arg15: arg15 arg16: arg16 arg17: arg17 arg18: arg18 arg19: arg19 arg20: arg20 arg21: arg21 arg22: arg22 arg23: arg23 arg24: arg24 arg25: arg25 arg26: arg26 arg27: arg27 arg28: arg28 arg29: arg29 arg30: arg30
	"Answer the <VARIANT> result of invoking the Run() method of the COM object."

	^(self invokeId: 259 withArguments:
			((Array new: 30)
				basicAt: 1 put: arg1;
				basicAt: 2 put: arg2;
				basicAt: 3 put: arg3;
				basicAt: 4 put: arg4;
				basicAt: 5 put: arg5;
				basicAt: 6 put: arg6;
				basicAt: 7 put: arg7;
				basicAt: 8 put: arg8;
				basicAt: 9 put: arg9;
				basicAt: 10 put: arg10;
				basicAt: 11 put: arg11;
				basicAt: 12 put: arg12;
				basicAt: 13 put: arg13;
				basicAt: 14 put: arg14;
				basicAt: 15 put: arg15;
				basicAt: 16 put: arg16;
				basicAt: 17 put: arg17;
				basicAt: 18 put: arg18;
				basicAt: 19 put: arg19;
				basicAt: 20 put: arg20;
				basicAt: 21 put: arg21;
				basicAt: 22 put: arg22;
				basicAt: 23 put: arg23;
				basicAt: 24 put: arg24;
				basicAt: 25 put: arg25;
				basicAt: 26 put: arg26;
				basicAt: 27 put: arg27;
				basicAt: 28 put: arg28;
				basicAt: 29 put: arg29;
				basicAt: 30 put: arg30;
				yourself))
!

select
	"Answer the <VARIANT> result of invoking the Select() method of the COM object."

	^(self invokeId: 235)
!

serverActions
	"Answer the <ExcelActions> value of the 'ServerActions' property of the receiver.
		Actions* ServerActions"

	^ExcelActions attachInterface: (self getPropertyId: 2491)
!

setPhonetic
	"Invoke the SetPhonetic() method of the COM object."

	(self invokeId: 1812)
!

show
	"Answer the <VARIANT> result of invoking the Show() method of the COM object."

	^(self invokeId: 496)
!

showDependents
	"Answer the <VARIANT> result of invoking the ShowDependents() method of the COM object.
	Default values are passed for all optional parameters."

	^self showDependents: VARIANT unspecified!

showDependents: remove
	"Answer the <VARIANT> result of invoking the ShowDependents() method of the COM object."

	^(self invokeId: 877 with: remove)
!

showDetail
	"Answer the <variant> value of the 'ShowDetail' property of the receiver.
		VARIANT ShowDetail"

	^(self getPropertyId: 585)
!

showDetail: arg1
	"Set the 'ShowDetail' property of the receiver to the <variant> value of the argument.
		void ShowDetail"

	self setPropertyId: 585 value: arg1
!

showErrors
	"Answer the <VARIANT> result of invoking the ShowErrors() method of the COM object."

	^(self invokeId: 878)
!

showPrecedents
	"Answer the <VARIANT> result of invoking the ShowPrecedents() method of the COM object.
	Default values are passed for all optional parameters."

	^self showPrecedents: VARIANT unspecified!

showPrecedents: remove
	"Answer the <VARIANT> result of invoking the ShowPrecedents() method of the COM object."

	^(self invokeId: 879 with: remove)
!

shrinkToFit
	"Answer the <variant> value of the 'ShrinkToFit' property of the receiver.
		VARIANT ShrinkToFit"

	^(self getPropertyId: 209)
!

shrinkToFit: arg1
	"Set the 'ShrinkToFit' property of the receiver to the <variant> value of the argument.
		void ShrinkToFit"

	self setPropertyId: 209 value: arg1
!

smartTags
	"Answer the <ExcelSmartTags> value of the 'SmartTags' property of the receiver.
		SmartTags* SmartTags"

	^ExcelSmartTags attachInterface: (self getPropertyId: 2016)
!

sort
	"Answer the <VARIANT> result of invoking the Sort() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 sort: VARIANT unspecified
		 order1: 1
		 key2: VARIANT unspecified
		 type: VARIANT unspecified
		 order2: 1
		 key3: VARIANT unspecified
		 order3: 1
		 header: 2
		 orderCustom: VARIANT unspecified
		 matchCase: VARIANT unspecified
		 orientation: 2
		 sortMethod: 1
		 dataOption1: 0
		 dataOption2: 0
		 dataOption3: 0!

sort: key1 order1: order1 key2: key2 type: type order2: order2 key3: key3 order3: order3 header: header orderCustom: orderCustom matchCase: matchCase orientation: orientation sortMethod: sortMethod dataOption1: dataOption1 dataOption2: dataOption2 dataOption3: dataOption3
	"Answer the <VARIANT> result of invoking the Sort() method of the COM object."

	^(self invokeId: 880 withArguments:
			((Array new: 15)
				basicAt: 1 put: key1;
				basicAt: 2 put: order1;
				basicAt: 3 put: key2;
				basicAt: 4 put: type;
				basicAt: 5 put: order2;
				basicAt: 6 put: key3;
				basicAt: 7 put: order3;
				basicAt: 8 put: header;
				basicAt: 9 put: orderCustom;
				basicAt: 10 put: matchCase;
				basicAt: 11 put: orientation;
				basicAt: 12 put: sortMethod;
				basicAt: 13 put: dataOption1;
				basicAt: 14 put: dataOption2;
				basicAt: 15 put: dataOption3;
				yourself))
!

sortSpecial
	"Answer the <VARIANT> result of invoking the SortSpecial() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 sortSpecial: 1
		 key1: VARIANT unspecified
		 order1: 1
		 type: VARIANT unspecified
		 key2: VARIANT unspecified
		 order2: 1
		 key3: VARIANT unspecified
		 order3: 1
		 header: 2
		 orderCustom: VARIANT unspecified
		 matchCase: VARIANT unspecified
		 orientation: 2
		 dataOption1: 0
		 dataOption2: 0
		 dataOption3: 0!

sortSpecial: sortMethod key1: key1 order1: order1 type: type key2: key2 order2: order2 key3: key3 order3: order3 header: header orderCustom: orderCustom matchCase: matchCase orientation: orientation dataOption1: dataOption1 dataOption2: dataOption2 dataOption3: dataOption3
	"Answer the <VARIANT> result of invoking the SortSpecial() method of the COM object."

	^(self invokeId: 881 withArguments:
			((Array new: 15)
				basicAt: 1 put: sortMethod;
				basicAt: 2 put: key1;
				basicAt: 3 put: order1;
				basicAt: 4 put: type;
				basicAt: 5 put: key2;
				basicAt: 6 put: order2;
				basicAt: 7 put: key3;
				basicAt: 8 put: order3;
				basicAt: 9 put: header;
				basicAt: 10 put: orderCustom;
				basicAt: 11 put: matchCase;
				basicAt: 12 put: orientation;
				basicAt: 13 put: dataOption1;
				basicAt: 14 put: dataOption2;
				basicAt: 15 put: dataOption3;
				yourself))
!

soundNote
	"Answer the <ExcelSoundNote> value of the 'SoundNote' property of the receiver.
		SoundNote* SoundNote"

	^ExcelSoundNote attachInterface: (self getPropertyId: 916)
!

speak
	"Invoke the Speak() method of the COM object.
	Default values are passed for all optional parameters."

	self
		 speak: VARIANT unspecified
		 speakFormulas: VARIANT unspecified!

speak: speakDirection speakFormulas: speakFormulas
	"Invoke the Speak() method of the COM object."

	(self invokeId: 2017 with: speakDirection with: speakFormulas)
!

specialCells: type
	"Answer the <ExcelRange> result of invoking the SpecialCells() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 specialCells: type
		 value: VARIANT unspecified!

specialCells: type value: value
	"Answer the <ExcelRange> result of invoking the SpecialCells() method of the COM object."

	^ExcelRange attachInterface: (self invokeId: 410 with: type with: value)
!

style
	"Answer the <variant> value of the 'Style' property of the receiver.
		VARIANT Style"

	^(self getPropertyId: 260)
!

style: arg1
	"Set the 'Style' property of the receiver to the <variant> value of the argument.
		void Style"

	self setPropertyId: 260 value: arg1
!

subscribeTo: edition
	"Answer the <VARIANT> result of invoking the SubscribeTo() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 subscribeTo: edition
		 format: -4158!

subscribeTo: edition format: format
	"Answer the <VARIANT> result of invoking the SubscribeTo() method of the COM object."

	^(self invokeId: 481 with: edition with: format)
!

subtotal: groupBy function: function totalList: totalList
	"Answer the <VARIANT> result of invoking the Subtotal() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 subtotal: groupBy
		 function: function
		 totalList: totalList
		 replace: VARIANT unspecified
		 pageBreaks: VARIANT unspecified
		 summaryBelowData: 1!

subtotal: groupBy function: function totalList: totalList replace: replace pageBreaks: pageBreaks summaryBelowData: summaryBelowData
	"Answer the <VARIANT> result of invoking the Subtotal() method of the COM object."

	^(self invokeId: 882 withArguments:
			((Array new: 6)
				basicAt: 1 put: groupBy;
				basicAt: 2 put: function;
				basicAt: 3 put: totalList;
				basicAt: 4 put: replace;
				basicAt: 5 put: pageBreaks;
				basicAt: 6 put: summaryBelowData;
				yourself))
!

summary
	"Answer the <variant> value of the 'Summary' property of the receiver.
		VARIANT Summary"

	^(self getPropertyId: 273)
!

table
	"Answer the <VARIANT> result of invoking the Table() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 table: VARIANT unspecified
		 columnInput: VARIANT unspecified!

table: rowInput columnInput: columnInput
	"Answer the <VARIANT> result of invoking the Table() method of the COM object."

	^(self invokeId: 497 with: rowInput with: columnInput)
!

text
	"Answer the <variant> value of the 'Text' property of the receiver.
		VARIANT Text"

	^(self getPropertyId: 138)
!

textToColumns
	"Answer the <VARIANT> result of invoking the TextToColumns() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 textToColumns: VARIANT unspecified
		 dataType: 1
		 textQualifier: 1
		 consecutiveDelimiter: VARIANT unspecified
		 tab: VARIANT unspecified
		 semicolon: VARIANT unspecified
		 comma: VARIANT unspecified
		 space: VARIANT unspecified
		 other: VARIANT unspecified
		 otherChar: VARIANT unspecified
		 fieldInfo: VARIANT unspecified
		 decimalSeparator: VARIANT unspecified
		 thousandsSeparator: VARIANT unspecified
		 trailingMinusNumbers: VARIANT unspecified!

textToColumns: destination dataType: dataType textQualifier: textQualifier consecutiveDelimiter: consecutiveDelimiter tab: tab semicolon: semicolon comma: comma space: space other: other otherChar: otherChar fieldInfo: fieldInfo decimalSeparator: decimalSeparator thousandsSeparator: thousandsSeparator trailingMinusNumbers: trailingMinusNumbers
	"Answer the <VARIANT> result of invoking the TextToColumns() method of the COM object."

	^(self invokeId: 1040 withArguments:
			((Array new: 14)
				basicAt: 1 put: destination;
				basicAt: 2 put: dataType;
				basicAt: 3 put: textQualifier;
				basicAt: 4 put: consecutiveDelimiter;
				basicAt: 5 put: tab;
				basicAt: 6 put: semicolon;
				basicAt: 7 put: comma;
				basicAt: 8 put: space;
				basicAt: 9 put: other;
				basicAt: 10 put: otherChar;
				basicAt: 11 put: fieldInfo;
				basicAt: 12 put: decimalSeparator;
				basicAt: 13 put: thousandsSeparator;
				basicAt: 14 put: trailingMinusNumbers;
				yourself))
!

top
	"Answer the <variant> value of the 'Top' property of the receiver.
		VARIANT Top"

	^(self getPropertyId: 126)
!

ungroup
	"Answer the <VARIANT> result of invoking the Ungroup() method of the COM object."

	^(self invokeId: 244)
!

unMerge
	"Invoke the UnMerge() method of the COM object."

	(self invokeId: 1384)
!

useStandardHeight
	"Answer the <variant> value of the 'UseStandardHeight' property of the receiver.
		VARIANT UseStandardHeight"

	^(self getPropertyId: 274)
!

useStandardHeight: arg1
	"Set the 'UseStandardHeight' property of the receiver to the <variant> value of the argument.
		void UseStandardHeight"

	self setPropertyId: 274 value: arg1
!

useStandardWidth
	"Answer the <variant> value of the 'UseStandardWidth' property of the receiver.
		VARIANT UseStandardWidth"

	^(self getPropertyId: 275)
!

useStandardWidth: arg1
	"Set the 'UseStandardWidth' property of the receiver to the <variant> value of the argument.
		void UseStandardWidth"

	self setPropertyId: 275 value: arg1
!

validation
	"Answer the <ExcelValidation> value of the 'Validation' property of the receiver.
		Validation* Validation"

	^ExcelValidation attachInterface: (self getPropertyId: 1387)
!

value
	"Answer the <variant> value of the 'Value' property of the receiver.
		VARIANT Value"

	^self value: VARIANT unspecified!

value: rangeValueDataType
	"Answer the <variant> value of the 'Value' property of the receiver.
		VARIANT Value"

	^(self getPropertyId: 6 item: rangeValueDataType)
!

value: rangeValueDataType _: arg2
	"Set the 'Value' property of the receiver to the <variant> value of the argument.
		void Value"

	self setPropertyId: 6 item: rangeValueDataType value: arg2
!

value2
	"Answer the <variant> value of the 'Value2' property of the receiver.
		VARIANT Value2"

	^(self getPropertyId: 1388)
!

value2: arg1
	"Set the 'Value2' property of the receiver to the <variant> value of the argument.
		void Value2"

	self setPropertyId: 1388 value: arg1
!

verticalAlignment
	"Answer the <variant> value of the 'VerticalAlignment' property of the receiver.
		VARIANT VerticalAlignment"

	^(self getPropertyId: 137)
!

verticalAlignment: arg1
	"Set the 'VerticalAlignment' property of the receiver to the <variant> value of the argument.
		void VerticalAlignment"

	self setPropertyId: 137 value: arg1
!

width
	"Answer the <variant> value of the 'Width' property of the receiver.
		VARIANT Width"

	^(self getPropertyId: 122)
!

worksheet
	"Answer the <Excel_Worksheet> value of the 'Worksheet' property of the receiver.
		Worksheet* Worksheet"

	^Excel_Worksheet attachInterface: (self getPropertyId: 348)
!

wrapText
	"Answer the <variant> value of the 'WrapText' property of the receiver.
		VARIANT WrapText"

	^(self getPropertyId: 276)
!

wrapText: arg1
	"Set the 'WrapText' property of the receiver to the <variant> value of the argument.
		void WrapText"

	self setPropertyId: 276 value: arg1
!

xPath
	"Answer the <ExcelXPath> value of the 'XPath' property of the receiver.
		XPath* XPath"

	^ExcelXPath attachInterface: (self getPropertyId: 2258)
! !
!ExcelRange categoriesFor: #__printOut!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #__printOut:to:copies:preview:activePrinter:printToFile:collate:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #_default!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #_default:columnIndex:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #_default:columnIndex:_:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #_pasteSpecial!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #_pasteSpecial:operation:skipBlanks:transpose:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #_printOut!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #_printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #activate!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #addComment!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #addComment:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #addIndent!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #addIndent:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #address!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #address:columnAbsolute:referenceStyle:external:relativeTo:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #addressLocal!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #addressLocal:columnAbsolute:referenceStyle:external:relativeTo:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #advancedFilter:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #advancedFilter:criteriaRange:copyToRange:unique:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #allowEdit!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #application!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #applyNames!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #applyNames:ignoreRelativeAbsolute:useRowColumnNames:omitColumn:omitRow:order:appendLast:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #applyOutlineStyles!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #areas!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #autoComplete:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #autoFill:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #autoFill:type:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #autoFilter!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #autoFilter:criteria1:operator:criteria2:visibleDropDown:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #autoFit!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #autoFormat!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #autoFormat:number:font:alignment:border:pattern:width:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #autoOutline!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #borderAround!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #borderAround:weight:colorIndex:color:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #borders!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #calculate!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #calculateRowMajorOrder!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #cells!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #characters!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #characters:length:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #checkSpelling!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #checkSpelling:ignoreUppercase:alwaysSuggest:spellLang:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #clear!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #clearComments!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #clearContents!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #clearFormats!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #clearNotes!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #clearOutline!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #column!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #columnDifferences:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #columns!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #columnWidth!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #columnWidth:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #comment!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #consolidate!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #consolidate:function:topRow:leftColumn:createLinks:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #copy!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #copy:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #copyFromRecordset:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #copyFromRecordset:maxRows:maxColumns:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #copyPicture!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #copyPicture:format:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #count!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #countLarge!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #createNames!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #createNames:left:bottom:right:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #createPublisher!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #createPublisher:appearance:containsPICT:containsBIFF:containsRTF:containsVALU:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #creator!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #currentArray!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #currentRegion!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #cut!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #cut:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #dataSeries!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #dataSeries:type:date:step:stop:trend:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #delete!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #delete:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #dependents_!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #dialogBox!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #directDependents!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #directPrecedents!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #dirty!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #editionOptions:option:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #editionOptions:option:name:reference:appearance:chartSize:format:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #end:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #entireColumn!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #entireRow!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #errors!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #exportAsFixedFormat:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #exportAsFixedFormat:filename:quality:includeDocProperties:ignorePrintAreas:from:to:openAfterPublish:fixedFormatExtClassPtr:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #fillDown!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #fillLeft!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #fillRight!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #fillUp!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #find:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #find:after:lookIn:lookAt:searchOrder:searchDirection:matchCase:matchByte:searchFormat:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #findNext!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #findNext:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #findPrevious!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #findPrevious:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #font!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #formatConditions!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #formula!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #formula:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #formulaArray!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #formulaArray:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #formulaHidden!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #formulaHidden:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #formulaLabel!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #formulaLabel:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #formulaLocal!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #formulaLocal:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #formulaR1C1!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #formulaR1C1:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #formulaR1C1Local!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #formulaR1C1Local:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #functionWizard!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #goalSeek:changingCell:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #group!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #group:end:by:periods:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #hasArray!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #hasFormula!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #height!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #hidden!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #hidden:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #horizontalAlignment!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #horizontalAlignment:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #hyperlinks!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #id!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #id:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #indentLevel!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #indentLevel:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #insert!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #insert:copyOrigin:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #insertIndent:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #interior!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!ExcelRange categoriesFor: #item:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #item:columnIndex:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #item:columnIndex:_:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #justify!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #left!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #listHeaderRows!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #listNames!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #listObject!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #locationInTable!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #locked!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #locked:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #mdx!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #merge!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #merge:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #mergeArea!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #mergeCells!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #mergeCells:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #name!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #name:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #navigateArrow!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #navigateArrow:arrowNumber:linkNumber:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #next!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #noteText!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #noteText:start:length:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #numberFormat!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #numberFormat:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #numberFormatLocal!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #numberFormatLocal:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #offset!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #offset:columnOffset:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #orientation!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #orientation:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #outlineLevel!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #outlineLevel:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #pageBreak!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #pageBreak:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #parent!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #parse!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #parse:destination:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #pasteSpecial!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #pasteSpecial:operation:skipBlanks:transpose:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #phonetic!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #phonetics!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #pivotCell!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #pivotField!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #pivotItem!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #pivotTable!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #precedents!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #prefixCharacter!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #previous!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #printOut!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #printOut:to:copies:preview:activePrinter:printToFile:collate:prToFileName:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #printPreview!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #printPreview:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #queryTable!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #range:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #range:cell2:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #readingOrder!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #readingOrder:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #removeDuplicates!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #removeDuplicates:header:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #removeSubtotal!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #replace:replacement:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #replace:replacement:lookAt:searchOrder:matchCase:matchByte:searchFormat:replaceFormat:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #resize!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #resize:columnSize:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #row!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #rowDifferences:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #rowHeight!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #rowHeight:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #rows!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #run!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #run:arg2:arg3:arg4:arg5:arg6:arg7:arg8:arg9:arg10:arg11:arg12:arg13:arg14:arg15:arg16:arg17:arg18:arg19:arg20:arg21:arg22:arg23:arg24:arg25:arg26:arg27:arg28:arg29:arg30:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #select!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #serverActions!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #setPhonetic!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #show!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #showDependents!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #showDependents:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #showDetail!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #showDetail:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #showErrors!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #showPrecedents!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #showPrecedents:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #shrinkToFit!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #shrinkToFit:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #smartTags!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #sort!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #sort:order1:key2:type:order2:key3:order3:header:orderCustom:matchCase:orientation:sortMethod:dataOption1:dataOption2:dataOption3:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #sortSpecial!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #sortSpecial:key1:order1:type:key2:order2:key3:order3:header:orderCustom:matchCase:orientation:dataOption1:dataOption2:dataOption3:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #soundNote!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #speak!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #speak:speakFormulas:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #specialCells:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #specialCells:value:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #style!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #style:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #subscribeTo:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #subscribeTo:format:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #subtotal:function:totalList:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #subtotal:function:totalList:replace:pageBreaks:summaryBelowData:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #summary!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #table!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #table:columnInput:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #text!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #textToColumns!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #textToColumns:dataType:textQualifier:consecutiveDelimiter:tab:semicolon:comma:space:other:otherChar:fieldInfo:decimalSeparator:thousandsSeparator:trailingMinusNumbers:!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #top!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #ungroup!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #unMerge!**auto generated**!methods!public! !
!ExcelRange categoriesFor: #useStandardHeight!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #useStandardHeight:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #useStandardWidth!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #useStandardWidth:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #validation!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #value!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #value:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #value:_:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #value2!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #value2:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #verticalAlignment!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #verticalAlignment:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #width!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #worksheet!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #wrapText!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #wrapText:!**auto generated**!properties!public! !
!ExcelRange categoriesFor: #xPath!**auto generated**!properties!public! !

!ExcelRange class methodsFor!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		ExcelRange initializeTypeLib"

	typeLib := ExcelLib! !
!ExcelRange class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

