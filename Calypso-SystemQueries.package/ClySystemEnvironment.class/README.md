I represent environment of Pharo system. I incapsulate globals (Smalltalk globals), packageOrganizer (RPackageOrganizer  default) and changesAnnouncer (SystemAnnouncer uniqueInstance). I have class side #currentImage instance created with all corresponding globals of current image.

I am used to navigate over system by ClyNavigationEnvironment.

Public API and Key Messages

- packages
- createPackageNamed: aString
- removePackage: aPackage
- includesClassNamed: aString 
- defaultClassCompiler
- subscribe: aNavigationEnvironment
- unsubscribe: aNavigationEnvironment

Internal Representation and Key Implementation Points.

    Instance Variables
	changesAnnouncer:		<SystemAnnouncer>
	globals:		<SmalltalkDictionary> "Smalltalk globals class"
	name:		<String>
	packageOrganizer:		<RPackageOrganizer>
	projectManager:		<ClyProjectManager>