"Filed out from Dolphin Smalltalk 7"!

Object subclass: #AidaProfiling
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AidaProfiling guid: (GUID fromString: '{633db587-d625-4cdf-908f-3fdf2d5ec3f4}')!
AidaProfiling comment: ''!
!AidaProfiling categoriesForClass!Unclassified! !
!AidaProfiling methodsFor!

areadmeGemstone
	"a short description of how to profile, interpret results, why to profile etc."!

areadmeResultsGS
	"results, history of, short explanations"

"Gemstone64 2.2.5 Profiling of Aida/Web 5.6, 11.2.08, Janko Mivsek
[1000 timesRepeat: [site answerTo: req]]

elapsed CPU time:    23662 ms,  monitoring interval: 10 ms
24ms/req, 40 req/s"!

areadmeResultsVW
	"results, history of, short explanations"

"VW 7.6 Profiling of Aida/Web 5.6, 11.2.08, Janko Mivsek
[1000 timesRepeat: [site answerTo: req]]

707 samples, 20.03 average ms/sample, 1780 scavenges, 28 incGCs,
11.75s active, 2.35s other processes,
14.16s real time, 0.06s profiling overhead
12ms/req, 83 req/s"!

areadmeSqueak
	"a short description of how to profile, interpret results, why to profile etc."!

areadmeVW
	"a short description of how to profile, interpret results, why to profile etc."!

ensure100KBFile
	"dummy .jpg file"
	| fname stream |
	fname := SpFilename named: 'test100K.jpg'.
	fname exists ifFalse:
		[[stream := fname writeStream binary.
		100000 timesRepeat: [stream nextPut: 16rCE] "just something"]
			ensure: [stream close] ].! !
!AidaProfiling categoriesFor: #areadmeGemstone!profiling-gs!public! !
!AidaProfiling categoriesFor: #areadmeResultsGS!profiling-gs!public! !
!AidaProfiling categoriesFor: #areadmeResultsVW!profiling-vw!public! !
!AidaProfiling categoriesFor: #areadmeSqueak!profiling-squeak!public! !
!AidaProfiling categoriesFor: #areadmeVW!profiling-vw!public! !
!AidaProfiling categoriesFor: #ensure100KBFile!public!support! !

