opening
open
	| query browser methods |
	methods := messages 
		select: [:each | (each isRingObject and: [ each isMethod ]) or: [ each isCompiledMethod  ] ]
		thenCollect: [ :each | each compiledMethod ].
	
	query := ClyDummyMethodQuery new 
		methods: methods asIdentitySet;
		description: title;
		criteriaString: autoSelect;
		criteriaBlock: refreshingBlock.
	browser := ClyMethodBrowser on: ClySystemNavigationEnvironment currentImage.
	browser show: query inScope: ClySystemNavigationEnvironment currentImageScope.
	^browser open