operations
setNewMethodTags: tagsString

	| tags |
	tags := (',' split: tagsString) collect: #trimBoth as: Array.
	
	ownerTool methodTags: (tags reject: #isEmpty)