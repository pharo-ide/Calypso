tests-classes methods
testBuildingFromSingleClassWithTraits
	| classes |
	classes := environment 
		selectScope: ClyLocalClassScope of: { ClyClassWithTraits}.
		
	self retrieveContentFrom: classes.

	self assertMethods: #(#localMethod)