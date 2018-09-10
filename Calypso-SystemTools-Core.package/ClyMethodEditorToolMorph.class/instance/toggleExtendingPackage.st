operations
toggleExtendingPackage

	extendingPackage ifNotNil: [ ^extendingPackage := nil ].
	
	extendingPackage := browser searchDialog 
		requestSingleObject: 'Choose package for method' from: ClyAllPackages sorted