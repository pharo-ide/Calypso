operations
requestPackage

	| extendingPackage |
	extendingPackage := ownerTool browser searchDialog 
		requestSingleObject: 'Choose package for method' from: ClyAllPackages sorted.
		
	ownerTool extendingPackage: extendingPackage