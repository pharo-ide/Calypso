tests
testIncludesMethodWhichUsesUndeclares

	group classScope: { ClyClassWithUndeclares }.	
	
	self assert: (group includesMethod: ClyClassWithUndeclares>>#method1WithUndeclares)