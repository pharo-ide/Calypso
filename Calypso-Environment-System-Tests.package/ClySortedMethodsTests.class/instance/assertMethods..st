helpers
assertMethods: selectors
	
	self assert: actualObjects size equals: selectors size.
	
	actualObjects with: selectors do: [ :actualMethod :expectedSelector | 
		self assert: actualMethod selector equals: expectedSelector ]