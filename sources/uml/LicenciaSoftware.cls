"Filed out from Dolphin Smalltalk 7"!

Object subclass: #LicenciaSoftware
	instanceVariableNames: 'numeracion nombreEmpresa fechaCreada cantidad estaBloqueada fechaAdquirida fechaExpiracion cantidadClases'
	classVariableNames: 'Current'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LicenciaSoftware guid: (GUID fromString: '{af24d823-cf2c-4712-a7ca-48b5afb600a4}')!
LicenciaSoftware comment: ''!
!LicenciaSoftware categoriesForClass!Unclassified! !
!LicenciaSoftware methodsFor!

cantidad
	^cantidad!

cantidad: anObject
	cantidad := anObject!

cantidadClases
	^cantidadClases!

cantidadClases: anObject
	cantidadClases := anObject!

estaBloqueada
	^estaBloqueada!

estaBloqueada: anObject
	estaBloqueada := anObject!

esValida

	^self subclassResponsibility!

expiro

	^Date today > fechaExpiracion!

fechaAdquirida
	^fechaAdquirida!

fechaAdquirida: anObject
	fechaAdquirida := anObject!

fechaCreada
	^fechaCreada!

fechaCreada: anObject
	fechaCreada := anObject!

fechaExpiracion
	^fechaExpiracion!

fechaExpiracion: anObject
	fechaExpiracion := anObject!

fileOut
	| pathFile |

	pathFile := FileSaveDialog showModal.
	pathFile ifNil: [^self].
	self fileOutEncriptedLicenceTo: pathFile!

fileOutDefault

	^self fileOutEncriptedLicenceTo: (SessionManager current imageBase , 'licenceDefault.uli')!

fileOutEncriptedLicenceTo: pathFile
	| fileStream encoder licenceArray |

	licenceArray := Array new: 7.
	encoder := PC1Cipher withKeyString: '##---abcdefghigk$%$%^&*()/*-hfuhfefee%%$'.
	licenceArray at: 1 put: (encoder cipherString: nombreEmpresa).
	licenceArray at: 2 put: (encoder cipherString: cantidad printString).
	licenceArray at: 3 put: (encoder cipherString: estaBloqueada printString).
	licenceArray at: 4 put: (encoder cipherString: fechaAdquirida printUMLShortFormat).
	licenceArray at: 5 put: (encoder cipherString: fechaExpiracion printUMLShortFormat).
	licenceArray at: 6 put: (encoder cipherString: cantidadClases printString).
	licenceArray at: 7 put: (encoder cipherString: self class name).

	fileStream := FileStream write: pathFile text: false.
	licenceArray binaryStoreOn: fileStream.
	fileStream close!

fileOutLicenceTo: pathFile
	| fileStream |

	fileStream := FileStream write: pathFile text: false.
	self binaryStoreOn: fileStream.
	fileStream close!

initialize

	super initialize.

	numeracion := ''.
	nombreEmpresa := 'N/A'.
	cantidad := 0.
	estaBloqueada := true.
	fechaAdquirida := Date today.
	fechaExpiracion := Date today.
	fechaCreada := Date today.
	cantidadClases := 0.!

nombreEmpresa
	^nombreEmpresa!

nombreEmpresa: anObject
	nombreEmpresa := anObject!

numeracion
	^numeracion!

numeracion: anObject
	numeracion := anObject!

printCantidadClases

	^'No limit'!

printEstaBloqueada

	^estaBloqueada ifTrue: ['Yes'] ifFalse: ['No']!

printFechaAdquirida

	^fechaAdquirida printString!

printFechaExpiracion

	^fechaExpiracion printString!

printType

	^'Software License' !

removerClassesDe: anUMLModel

	self subclassResponsibility!

setAsCurrent

	self class setLicence: self! !
!LicenciaSoftware categoriesFor: #cantidad!accessing!private! !
!LicenciaSoftware categoriesFor: #cantidad:!accessing!private! !
!LicenciaSoftware categoriesFor: #cantidadClases!accessing!private! !
!LicenciaSoftware categoriesFor: #cantidadClases:!accessing!private! !
!LicenciaSoftware categoriesFor: #estaBloqueada!accessing!private! !
!LicenciaSoftware categoriesFor: #estaBloqueada:!accessing!private! !
!LicenciaSoftware categoriesFor: #esValida!public! !
!LicenciaSoftware categoriesFor: #expiro!public! !
!LicenciaSoftware categoriesFor: #fechaAdquirida!accessing!private! !
!LicenciaSoftware categoriesFor: #fechaAdquirida:!accessing!private! !
!LicenciaSoftware categoriesFor: #fechaCreada!accessing!private! !
!LicenciaSoftware categoriesFor: #fechaCreada:!accessing!private! !
!LicenciaSoftware categoriesFor: #fechaExpiracion!accessing!private! !
!LicenciaSoftware categoriesFor: #fechaExpiracion:!accessing!private! !
!LicenciaSoftware categoriesFor: #fileOut!encripted licence!public! !
!LicenciaSoftware categoriesFor: #fileOutDefault!public! !
!LicenciaSoftware categoriesFor: #fileOutEncriptedLicenceTo:!encripted licence!public! !
!LicenciaSoftware categoriesFor: #fileOutLicenceTo:!public! !
!LicenciaSoftware categoriesFor: #initialize!public! !
!LicenciaSoftware categoriesFor: #nombreEmpresa!accessing!private! !
!LicenciaSoftware categoriesFor: #nombreEmpresa:!accessing!private! !
!LicenciaSoftware categoriesFor: #numeracion!accessing!private! !
!LicenciaSoftware categoriesFor: #numeracion:!accessing!private! !
!LicenciaSoftware categoriesFor: #printCantidadClases!public! !
!LicenciaSoftware categoriesFor: #printEstaBloqueada!public! !
!LicenciaSoftware categoriesFor: #printFechaAdquirida!public! !
!LicenciaSoftware categoriesFor: #printFechaExpiracion!public! !
!LicenciaSoftware categoriesFor: #printType!public! !
!LicenciaSoftware categoriesFor: #removerClassesDe:!public! !
!LicenciaSoftware categoriesFor: #setAsCurrent!public! !

!LicenciaSoftware class methodsFor!

current

	Current ifNil: [Current := LicenciaNoValida new].

	^Current

	!

fileInDefault

	^self fileInEncriptedLicenceFrom: (SessionManager current imageBase , 'licenceDefault.uli')!

fileInEncriptedLicenceFrom: pathFile
	| fileStream encoder licenceArray licenciaClass licenciaEmpresa licenciaCantidad licenciaEstaBloqueada licenciaFechaAdquirida licenciaFechaExpiracion licenciaCantidadClases |

	fileStream := FileStream read: pathFile text: false.
	licenceArray := Array binaryReadFrom: fileStream.
	fileStream close.
	encoder := PC1Cipher withKeyString: '##---abcdefghigk$%$%^&*()/*-hfuhfefee%%$'.

	licenciaEmpresa := encoder cipherString: (licenceArray at: 1).
	licenciaCantidad := Number fromString: (encoder cipherString: (licenceArray at: 2)).
	licenciaEstaBloqueada := (encoder cipherString: (licenceArray at: 3)) = 'true'.
	licenciaFechaAdquirida := Date fromString: (encoder cipherString: (licenceArray at: 4)) format: 'dd/MM/yyyy'.
	licenciaFechaExpiracion := Date fromString: (encoder cipherString: (licenceArray at: 5)) format: 'dd/MM/yyyy'.
	licenciaCantidadClases := Number fromString: (encoder cipherString: (licenceArray at: 6)).
	licenciaClass := encoder cipherString: (licenceArray at: 7).

	^(Smalltalk at: licenciaClass) new
		nombreEmpresa: licenciaEmpresa;
		cantidad: licenciaCantidad;
		estaBloqueada: licenciaEstaBloqueada;
		fechaAdquirida: licenciaFechaAdquirida;
		fechaExpiracion: licenciaFechaExpiracion;
		cantidadClases: licenciaCantidadClases!

fileInLicenceFrom: pathFile
	| fileStream |

	fileStream := FileStream read: pathFile text: false.
	self setLicence: (LicenciaSoftware binaryReadFrom: fileStream).
	^self current!

new
	^super new initialize!

setLicence: unaLicenciaSoftware

	Current := unaLicenciaSoftware.

	^Current

	!

setNoValida

	self setLicence: LicenciaNoValida new.!

setPermanente

	self setLicence: LicenciaPermanteSoftware new.! !
!LicenciaSoftware class categoriesFor: #current!public! !
!LicenciaSoftware class categoriesFor: #fileInDefault!public! !
!LicenciaSoftware class categoriesFor: #fileInEncriptedLicenceFrom:!encripted licence!public! !
!LicenciaSoftware class categoriesFor: #fileInLicenceFrom:!public! !
!LicenciaSoftware class categoriesFor: #new!public! !
!LicenciaSoftware class categoriesFor: #setLicence:!public! !
!LicenciaSoftware class categoriesFor: #setNoValida!public! !
!LicenciaSoftware class categoriesFor: #setPermanente!public! !

