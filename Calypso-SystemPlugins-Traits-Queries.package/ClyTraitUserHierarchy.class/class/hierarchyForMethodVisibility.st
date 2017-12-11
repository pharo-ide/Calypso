method visibility
hierarchyForMethodVisibility
	"It will add inherited traits to the list of inherited classes to toggle visibility of methods"
	^(ClySubclassHierarchy hierarchyForMethodVisibility, self inverse) 
		sortedBy: ClyTraitFirstSortFunction ascend