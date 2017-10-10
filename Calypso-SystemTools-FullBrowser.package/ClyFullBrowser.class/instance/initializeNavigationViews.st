initialization
initializeNavigationViews

	packageView := self newNavigationView.
	packageView enableFilterUsing: ClyRegexPattern new.
	packageView requestNavigationBy: #showClassesForPackages:.
	
	classView := self newNavigationView.
	classView displayMainColumnBy: [ :cell :item | 
		self specifyClassItemNameOn: cell nameMorph for: item environmentItem].
	classView enableFilter.
	classView requestNavigationBy: #showMethodsForClasses:.

	methodGroupView := self newNavigationView.
	methodGroupView requestNavigationBy: #showMethodsForGroups:.
	
	methodView := self newNavigationView.
	methodView displayMainColumnBy: [ :cell :item | 
		self specifyMethodItemNameOn: cell nameMorph for: item environmentItem].	
	methodView requestNavigationBy: #highlightMethodGroupsFor:.