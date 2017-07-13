testing
canBeExecutedInContext: aToolContext

	^aToolContext selectedItems	anySatisfy: [ :each | 
			each hasProperty: ClyTestResultProperty ]