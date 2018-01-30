default hierarchy
defaultHierarchy

	self registeredInstancesDo: [ :each | ^each createHierarchy ].
	
	self error: 'No hierarchy provider is found to represent method visibility hierarchy'