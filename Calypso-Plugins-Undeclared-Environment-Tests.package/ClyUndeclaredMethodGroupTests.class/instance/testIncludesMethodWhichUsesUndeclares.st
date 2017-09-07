tests
testIncludesMethodWhichUsesUndeclares

	group classes: { ClyClassWithUndeclares }.	
	
	self assert: (group includesMethod: ClyClassWithUndeclares>>#undeclaresMethod1)