"Filed out from Dolphin Smalltalk 7"!

Object subclass: #SwazooAida
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooAida guid: (GUID fromString: '{4402e8c2-8655-447d-af47-f66200c284dc}')!
SwazooAida comment: 'SwazooAida is here just for easier start and stop your Aida/Web application server

	- SwazooAida demoStart             "will create and start a demo site http://localhost:8888"
	- SwazooAida startOn: portNum   "will start a site on that port on all IP interfaces, any host"
								      "sie will be created if doesn''t exist yet"
	- SwazooAida start    "will start all existing sites"
	- SwazooAida stop     "will stop all running sites"'!
!SwazooAida categoriesForClass!Unclassified! !
!SwazooAida class methodsFor!

demoStart             
	"will create (if not yet) and start a demo site on http://localhost:8888"
	SwazooServer aidaDemoStart!

demoStop             
	"will stop a demo site on http://localhost:8888"
	SwazooServer aidaDemoStop!

start    
	"will start all existing sites, both Aida ones and others on  Swazoo web server"
	SwazooServer start!

startOn: portNum   
	"will start a site on that port on all IP interfaces, any host"
      "site will be created if doesn't exist yet"
	SwazooServer aidaStartOn: portNum!

stop    
	"will stop all running sites, both Aida ones and other on Swazoo web server"
	SwazooServer stop! !
!SwazooAida class categoriesFor: #demoStart!public!start/stop! !
!SwazooAida class categoriesFor: #demoStop!public!start/stop! !
!SwazooAida class categoriesFor: #start!public!start/stop! !
!SwazooAida class categoriesFor: #startOn:!public!start/stop! !
!SwazooAida class categoriesFor: #stop!public!start/stop! !

