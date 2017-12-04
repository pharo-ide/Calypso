instance creation
defaultHierarchy

	ClyMethodVisibilityProvider registeredInstancesDo: [ :each | 
		^each createHierarchy ].
	
	self error: 'No hierarchy provider is found to represent method visibility groups'