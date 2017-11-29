operations
renameMethodTagTo: newTag
	
	self methods do: [ :each | each tagWith: newTag]