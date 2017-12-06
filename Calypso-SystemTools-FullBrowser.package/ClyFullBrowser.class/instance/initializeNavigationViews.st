initialization
initializeNavigationViews

	packageView := self newNavigationView
		treeStructure: 	{ 
			ClyManagedProject -> #prepareProjectItemsQueryFrom:in:. 
			ClyPackageGroup -> #prepareProjectItemsQueryFrom:in:.
			RPackage -> #prepareClassGroupQueryFrom:in: };
		enableFilterUsing: ClyRegexPattern new;
		requestNavigationBy: #packageSelectionChanged.
	packageView filterField announcer when: RubTextChanged send: #updateDefaultPackageFilter to: self.
	
	classView := self newNavigationView
		displayMainColumnBy: [ :cell :item | 
			self specifyClassItemNameOn: cell nameMorph for: item browserItem];
		enableFilter;
		requestNavigationBy: #classSelectionChanged.

	methodGroupView := self newNavigationView
		treeStructure: { 
			ClyMethodGroup -> #prepareSubgroupsQueryFrom:in: };
		requestNavigationBy: #methodGroupSelectionChanged;
		neverRestoreSelection.
	
	methodView := self newNavigationView
		displayMainColumnBy: [ :cell :item | 
			self specifyMethodItemNameOn: cell nameMorph for: item browserItem];
		requestNavigationBy: #methodSelectionChanged.