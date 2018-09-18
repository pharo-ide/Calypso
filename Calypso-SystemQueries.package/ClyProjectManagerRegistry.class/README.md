I provide access to all projects from different kind of package managers.
It can be Cargo manager, Metacello manager, etc.

ClySystemEnvironment instance keeps my instance. To register new package manager in image use following expression: 
	
	ClySystemEnvironment currentImage registerPackageManager: aPackageManager
	
I allow different kind of package managers to be used by Calypso browser to display all available projects.

Internal Representation and Key Implementation Points.

    Instance Variables
	packageManagers:		<Collection of<ClyPackageManager>>