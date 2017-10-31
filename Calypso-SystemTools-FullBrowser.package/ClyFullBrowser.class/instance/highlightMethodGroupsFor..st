navigation
highlightMethodGroupsFor: selectedMethods

	| actualMethods |
	actualMethods := selectedMethods rawItems.
	
	methodGroupView highlightItemsWhich: [ :eachGroup | 
		actualMethods anySatisfy: [:eachMethod | 
			eachGroup actualObject includesMethod: eachMethod]]