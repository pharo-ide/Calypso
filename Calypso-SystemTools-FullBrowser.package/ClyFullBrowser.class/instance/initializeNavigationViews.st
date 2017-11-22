initialization
initializeNavigationViews

	packageView := self newNavigationView
		treeStructure: 	{ 
			ClyManagedProject -> #prepareProjectItemsQueryFrom:in:. 
			ClyPackageGroup -> #prepareProjectItemsQueryFrom:in:.
			RPackage -> #prepareClassGroupQueryFrom:in: };
		enableFilterUsing: ClyRegexPattern new;
		requestNavigationBy: #showClassesForPackages:.
	packageView filterField announcer when: RubTextChanged send: #updateDefaultPackageFilter to: self.
	
	classView := self newNavigationView
		displayMainColumnBy: [ :cell :item | 
			self specifyClassItemNameOn: cell nameMorph for: item browserItem];
		enableFilter;
		requestNavigationBy: #showMethodsForClasses:.

	methodGroupView := self newNavigationView
		treeStructure: { 
			ClyMethodGroup -> #prepareSubgroupsQueryFrom:in: };
		requestNavigationBy: #showMethodsForGroups:.
	
	methodView := self newNavigationView
		displayMainColumnBy: [ :cell :item | 
			self specifyMethodItemNameOn: cell nameMorph for: item browserItem];
		requestNavigationBy: #highlightMethodGroupsFor:.