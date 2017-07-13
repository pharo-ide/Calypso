tests-classes methods
testBuildingFromSingleTraitWhichUsesOtherTraits
	| classes |
	classes := environment 
		selectScope: ClyLocalClassScope of: { ClyTraitChild1}.
		
	self retrieveContentFrom: classes.

	self assertMethods: #(#methodFromTraitChild1)