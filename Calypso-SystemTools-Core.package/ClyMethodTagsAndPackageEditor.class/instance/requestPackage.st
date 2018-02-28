operations
requestPackage

	| extendingPackage |
	extendingPackage := ownerTool context requestSinglePackage: 'Choose package for method'.
		
	ownerTool extendingPackage: extendingPackage