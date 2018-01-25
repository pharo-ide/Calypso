operations
requestTag

	| selectedTag |
	selectedTag := self ownerTool browser createCommandContext 
		requestSingleMethodTag: 'New protocol name'.
	
	ownerTool methodTags: { selectedTag asSymbol }