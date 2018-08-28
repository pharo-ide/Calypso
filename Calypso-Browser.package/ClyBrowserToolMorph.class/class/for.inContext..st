instance creation
for: aBrowser inContext: aBrowserContext

	^self new 
		browser: aBrowser;
		context: aBrowserContext;
		setUpModelFromContext;
		yourself