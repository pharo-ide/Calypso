navigation
highlightMethodGroupsFor: selectedMethods

	| actualMethods |
	actualMethods := selectedMethods actualObjects.
	
	methodGroupView highlightItemsWhich: [ :eachGroup | 
		actualMethods anySatisfy: [:eachMethod | 
			eachGroup actualObject includesMethod: eachMethod]]