"Filed out from Dolphin Smalltalk 7"!

Object subclass: #MIMEMap
	instanceVariableNames: 'mimeTypes fileExtensions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MIMEMap guid: (GUID fromString: '{df797d88-6cf5-4c83-8412-e999438d6bb9}')!
MIMEMap comment: ''!
!MIMEMap categoriesForClass!Unclassified! !
!MIMEMap methodsFor!

addType: aTypeString andExtension: anExtensionString
	| exts |
	exts := self mimeTypes at: aTypeString ifAbsentPut: [OrderedCollection new].
	(exts includes: anExtensionString) ifFalse: [exts add: anExtensionString].
	self fileExtensions at: anExtensionString ifAbsentPut: [aTypeString].!

extensionForType: aString
	"only first one if more than one ext exist for this mime type"
	| exts string |
	string := aString = 'image/pjpeg' ifTrue: ['image/jpeg'] ifFalse: [aString]. "wierd IE problem"
	string := aString = 'image/x-png' ifTrue: ['image/png'] ifFalse: [string]. "wierd IE problem"
	exts := self mimeTypes at: string asLowercase ifAbsent: [#()].
	^exts notEmpty ifTrue: [exts first] ifFalse: [nil]

"MIMEMap new extensionForType: 'image/jpeg'"!

extensionsForType: aString
	^self mimeTypes at: aString asLowercase ifAbsent: [#()].

"MIMEMap new extensionsForType: 'image/jpeg'"!

fileExtensions
	fileExtensions isNil ifTrue: [self initFileExtensions].
	^fileExtensions!

iconForType: aString
	"a name of icon to represent this content type, from WebStyle imgs-filetype icons"
	aString isNil ifTrue: [^#unknownSmallPng].
	'text/plain' = aString ifTrue: [^#txtSmallPng].
	'text/xml' = aString ifTrue: [^#xmlSmallPng].
	'application/pdf' = aString ifTrue: [^#pdfSmallPng].
	'application/msword' = aString ifTrue: [^#wordSmallPng].
	'application/rtf' = aString ifTrue: [^#wordSmallPng].
	'application/excel' = aString ifTrue: [^#excelSmallPng].
	'application/powerpoint' = aString ifTrue: [^#powerpointSmallPng].
	'application/zip' = aString ifTrue: [^#zipSmallPng].
	('image/*' match: aString) ifTrue: [^#imageSmallPng].
	('audio/*' match: aString) ifTrue: [^#multimediaSmallPng].
	('video/*' match: aString) ifTrue: [^#multimediaSmallPng].
	^#unknownSmallPng

"MIMEMap new iconForType: 'image/jpeg'"!

initFileExtensions
	fileExtensions := Dictionary new.!

initFromApacheMimeTypes
	"see class method. Only mime types, which have some extension defined, are set!! "
	| collection |
	collection := self class arrayFromApacheMimeTypes.
	collection do: [:col | 
		2 to: col size do: [:inx | self addType: col first andExtension: (col at: inx)] ]

"MIMEMap new"!

initialize
	self initFromApacheMimeTypes!

initMimeTypes
	mimeTypes := Dictionary new.!

mimeTypes
	mimeTypes isNil ifTrue: [self initMimeTypes].
	^mimeTypes!

removeType: aTypeString andExtension: anExtensionString
	| exts |
	exts := self mimeTypes at: aTypeString ifAbsent: [OrderedCollection new].
	(exts includes: anExtensionString) ifTrue: [exts remove: anExtensionString].
	exts isEmpty ifTrue: [self mimeTypes removeKey: aTypeString ifAbsent: [] ].
	self fileExtensions removeKey: anExtensionString ifAbsent: [].!

typeForExtension: aString
	| ext |
	aString isNil ifTrue: [^nil].
	ext := aString asLowercase copyWithout: $. .
	^self fileExtensions at: ext ifAbsent: [nil].

"MIMEMap new typeForExtension: 'jpg'"! !
!MIMEMap categoriesFor: #addType:andExtension:!adding-removing!public! !
!MIMEMap categoriesFor: #extensionForType:!accessing!public! !
!MIMEMap categoriesFor: #extensionsForType:!accessing!public! !
!MIMEMap categoriesFor: #fileExtensions!private! !
!MIMEMap categoriesFor: #iconForType:!accessing!public! !
!MIMEMap categoriesFor: #initFileExtensions!initialize-release!public! !
!MIMEMap categoriesFor: #initFromApacheMimeTypes!initialize-release!public! !
!MIMEMap categoriesFor: #initialize!initialize-release!public! !
!MIMEMap categoriesFor: #initMimeTypes!initialize-release!public! !
!MIMEMap categoriesFor: #mimeTypes!private! !
!MIMEMap categoriesFor: #removeType:andExtension:!adding-removing!public! !
!MIMEMap categoriesFor: #typeForExtension:!accessing!public! !

!MIMEMap class methodsFor!

apacheMimeTypes
	"from /etc/httpd/mime.types after Apache v1.3 is installed"

^'application/EDI-Consent
application/EDI-X12
application/EDIFACT
application/activemessage
application/andrew-inset	ez
application/applefile
application/atomicmail
application/cals-1840
application/commonground
application/cybercash
application/cu-seeme		csm cu
application/dca-rft
application/dec-dx
application/eshop
application/excel		xls
application/ghostview
application/hyperstudio
application/iges
application/mac-binhex40	hqx
application/mac-compactpro	cpt
application/macwriteii
application/marc
application/mathematica
application/msword		doc dot wrd
application/news-message-id
application/news-transmission
application/octet-stream	bin dms lha lzh exe class
application/oda			oda
application/pdf			pdf
application/pgp			pgp
application/pgp-encrypted
application/pgp-keys
application/pgp-signature	pgp
application/postscript		ai eps ps
application/powerpoint		ppt
application/remote-printing
application/rtf			rtf
application/slate
application/wita
application/wordperfect5.1	wp5
application/x-123		wk
application/x-Wingz		wz
application/x-bcpio		bcpio
application/x-bzip2		bz2
application/x-cdlink		vcd
application/x-chess-pgn		pgn
application/x-compress		z Z
application/x-cpio		cpio
application/x-csh		csh
application/x-debian-package	deb
application/x-director		dcr dir dxr
application/x-dvi		dvi
application/x-gtar		gtar tgz
application/x-gunzip		gz
application/x-gzip		gz
application/x-hdf		hdf
application/x-httpd-php		phtml pht php
application/x-javascript	js
application/x-kword		kwd kwt
application/x-kspread		ksp
application/x-kpresenter	kpr kpt
application/x-kchart		chrt
application/x-koan		skp skd skt skm
application/x-latex		latex
application/x-maker		frm maker frame fm fb book fbdoc
application/x-mif		mif
application/x-msdos-program	com exe bat
application/x-netcdf		nc cdf
application/x-ns-proxy-autoconfig	pac
application/x-perl		pl pm
application/x-rad		rad
application/x-rpm		rpm spm
application/x-sh		sh
application/x-shar		shar
application/x-shockwave-flash	swf
application/x-stuffit		sit
application/x-sv4cpio		sv4cpio
application/x-sv4crc		sv4crc
application/x-tar		tar
application/x-tcl		tcl
application/x-tex		tex
application/x-texinfo		texinfo texi
application/x-troff		t tr roff
application/x-troff-man		man
application/x-troff-me		me
application/x-troff-ms		ms
application/x-ustar		ustar
application/x-wais-source	src
application/zip			zip
audio/basic			au snd
audio/midi			mid midi kar
audio/mpeg			mpga mp2 mp3
audio/x-aiff			aif aifc aiff
audio/x-realaudio		ra
audio/x-wav			wav
chemical/x-pdb			pdb xyz
image/gif			gif
image/ief			ief
image/jpeg			jpeg jpg jpe
image/png			png
image/tiff			tiff tif
image/x-cmu-raster		ras
image/x-portable-anymap		pnm
image/x-portable-bitmap		pbm
image/x-portable-graymap	pgm
image/x-portable-pixmap		ppm
image/x-rgb			rgb
image/x-xbitmap			xbm
image/x-xpixmap			xpm
image/x-xwindowdump		xwd
message/external-body
message/news
message/partial
message/rfc822
model/iges			igs iges
model/mesh			msh mesh silo
model/vrml			wrl vrml
multipart/alternative
multipart/appledouble
multipart/digest
multipart/mixed
multipart/parallel
text/css			css
text/html			html htm
text/plain			asc txt c cc h hh cpp hpp
text/richtext			rtx
text/rtf			rtf
text/sgml			sgml sgm
text/tab-separated-values	tsv
text/x-setext			etx
text/x-vCalendar		vcs
text/x-vCard			vcf
text/xml			xml dtd
video/dl			dl
video/fli			fli
video/gl			gl
video/mpeg			mp2 mpe mpeg mpg
video/quicktime			qt mov
video/x-msvideo			avi
video/x-sgi-movie		movie
x-conference/x-cooltalk		ice
x-world/x-vrml			wrl vrml
audio/x-pn-realaudio rmm ram
audio/vnd.rn-realaudio ra
application/smil smi smil
text/vnd.rn-realtext rt
video/vnd.rn-realvideo rv
image/vnd.rn-realflash rf swf
application/x-shockwave-flash2-preview rf swf
application/sdp sdp
application/x-sdp sdp
application/vnd.rn-realmedia rm
image/vnd.rn-realpix rp
'!

arrayFromApacheMimeTypes
	| collection stream |
	collection:= OrderedCollection new.
	stream := ReadStream on: self apacheMimeTypes.
	[stream atEnd] whileFalse:
		[ | col line word |
		col := OrderedCollection new.
		line := (stream upTo: Character cr) readStream.
		[line atEnd] whileFalse: [word := line upToSeparator. word notEmpty ifTrue: [col add: word] ].
		collection add: col].
	^collection

"MIMEMap arrayFromApacheMimeTypes"!

default
	^AIDASite default mimeMap!

new
	^super new initialize! !
!MIMEMap class categoriesFor: #apacheMimeTypes!accessing!public! !
!MIMEMap class categoriesFor: #arrayFromApacheMimeTypes!accessing!public! !
!MIMEMap class categoriesFor: #default!accessing!public! !
!MIMEMap class categoriesFor: #new!instance creation!public! !

