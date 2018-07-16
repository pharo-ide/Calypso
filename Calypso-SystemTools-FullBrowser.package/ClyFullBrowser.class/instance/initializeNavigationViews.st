initialization
initializeNavigationViews

	| projectItemClass | 
	projectItemClass := ClySystemEnvironment currentImage projectItemClass.

	packageView := self newNavigationView
		treeStructure: 	{ 
			projectItemClass -> #prepareProjectItemsQueryFrom:in:. 
			ClyProjectChildItem -> #prepareProjectItemsQueryFrom:in:.
			RPackage -> #prepareClassGroupQueryFrom:in: };
		enableFilterUsing: ClyRegexPattern new;
		requestNavigationBy: #packageSelectionChanged.
	packageView filterField announcer when: RubTextChanged send: #updateDefaultPackageFilter to: self.
	
	classView := self newNavigationView
		displayMainColumnBy: [ :cell :item | 
			self specifyClassItemNameOn: cell label for: item browserItem];
		enableFilter;
		requestNavigationBy: #classSelectionChanged.

	methodGroupView := self newNavigationView
		treeStructure: { 
			ClyMethodGroup -> #prepareSubgroupsQueryFrom:in: };
		requestNavigationBy: #methodGroupSelectionChanged;
		neverRestoreSelection.
	
	methodView := self newNavigationView
		displayMainColumnBy: [ :cell :item | 
			self specifyMethodItemNameOn: cell label for: item browserItem];
		requestNavigationBy: #methodSelectionChanged.