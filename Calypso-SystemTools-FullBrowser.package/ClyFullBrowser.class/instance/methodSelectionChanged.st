selection changes
methodSelectionChanged

	| actualMethods |
	actualMethods := self methodSelection actualObjects.
	
	methodGroupView highlightItemsWhich: [ :eachGroup | 
		actualMethods anySatisfy: [:eachMethod | 
			eachGroup actualObject includesMethod: eachMethod]]