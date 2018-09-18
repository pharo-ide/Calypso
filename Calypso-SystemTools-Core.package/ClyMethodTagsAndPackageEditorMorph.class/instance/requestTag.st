operations
requestTag

	| selectedTag existingTag |
	existingTag := ownerTool methodTags 
		ifEmpty: [ '' ] ifNotEmpty: [ :tags | tags anyOne ].

	selectedTag := self ownerTool context
		requestSingleMethodTag: 'New protocol name' suggesting: existingTag.
	selectedTag = existingTag ifTrue: [ ^CmdCommandAborted signal ].
	
	ownerTool methodTags: { selectedTag asSymbol }