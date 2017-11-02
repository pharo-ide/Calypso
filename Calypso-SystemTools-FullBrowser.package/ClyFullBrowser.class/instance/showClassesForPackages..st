navigation
showClassesForPackages: selectedPackages
	
	self 
		switchClassViewTo: (ClyAllClasses requiredResult: ClyHierarchicallySortedClasses new) 
		inScope: (selectedPackages asItemsScope: ClyPackageScope)