"Boot a U-Fabrik development image"

SessionManager current splashShowAtStartup: false.
SmalltalkSystemShell allInstances first position: 20@50.
(TranscriptShell allInstances , #(nil)) first ifNotNil: [:shell | shell view position: 20@600; extent: 800@300; setFocus].
!
| umllist aidalist dblist |
umllist := #(
	'UML Live Engine Tests'
	'UML Live Engine Views'
	'XMI Import-Export Interfase II Tests'
	'UML Paint'
	'UML Smalltalk Bridge'
	'UML Development Add In'
	'UML Model Comparision Views'
	'UML Live Engine View Composer II'
).
(Delay forMilliseconds: 200) wait.
ProgressDialog showModalWhile: [:progress |
	1 to: umllist size do: [:i |
		| name percent |
		name := umllist at: i.
		percent := (i * 100 / umllist size) asInteger.
		progress
			value: percent;
			text: 'Loading package: ' , name;
			yourself.
		PackageManager current install: 'sources\uml\' , name , '.pax'.
	].
].
aidalist := #(
	'AIDA Dolphin'
	'AIDA for UML Live Engine'
	'XMI Import-Export Interfase II Tests'
	'UML Paint'
	'UML Smalltalk Bridge'
	'UML Development Add In'
	'UML Model Comparision Views'
	'UML Live Engine View Composer II'
).
ProgressDialog showModalWhile: [:progress |
	1 to: aidalist size do: [:i |
		| name percent |
		name := aidalist at: i.
		percent := (i * 100 / aidalist size) asInteger.
		progress
			value: percent;
			text: 'Loading package: ' , name;
			yourself.
		PackageManager current install: 'sources\aida\' , name , '.pax'.
	].
].
dblist := #(
	'DataBase Modeler Views'
	'DataBase Migration Views'
).
ProgressDialog showModalWhile: [:progress |
	1 to: dblist size do: [:i |
		| name percent |
		name := dblist at: i.
		percent := (i * 100 / dblist size) asInteger.
		progress
			value: percent;
			text: 'Loading package: ' , name;
			yourself.
		PackageManager current install: 'sources\database\' , name , '.pax'.
	].
].
!
IdeaSpaceShell allInstances isEmpty ifTrue: [
	IdeaSpaceShell show
		absorbCard: SmalltalkWorkspaceDocument show;
		absorbCard: PackageBrowserShell show;
		absorbCard: SystemBrowserShell show;
		position: 50@80; extent: 1200@700;
		yourself.
].
!
"Set window sizes and selection for Packages tab"
| container filterView layoutManager packagesView sources | 
container := (PackageBrowserShell allInstances first view viewNamed: 'packages') referee. 
filterView := container viewNamed: 'filter'. 
packagesView := container viewNamed: 'packages'. 
layoutManager := container layoutManager. 
layoutManager arrangementOf: filterView put: 1. 
layoutManager arrangementOf: packagesView put: 7. 
container layout. 
sources := filterView model asSet detect: [:each | each name = 'sources'].
filterView presenter selection: sources.
!
"Set window sizes and selection for System Browser tab"
| container filterView layoutManager packagesView sources | 
container := (SystemBrowserShell allInstances first view viewNamed: 'packages') referee. 
filterView := container viewNamed: 'filter'. 
packagesView := container viewNamed: 'packages'. 
layoutManager := container layoutManager. 
layoutManager arrangementOf: filterView put: 2. 
layoutManager arrangementOf: packagesView put: 5. 
container layout. 
sources := filterView model asSet detect: [:each | each name = 'sources'].
filterView presenter selection: sources.
!
ClassBrowserAbstract allSubclasses do: [:each | 
	(each plugins includes: DebugInfoPlugin) ifFalse: [each plugins add: DebugInfoPlugin]].
Debugger defaultExtent: 1000@600.
!
UFabrikManagerShell show 
	position: 50@50;
	yourself.
Cursor wait showWhile: [
	Transcript flush.	"don't clear Transcript; we want to see any errors"
	SourceManager default compressSources.
	(Delay forMilliseconds: 200) wait.
	SessionManager current saveImage.
].
!