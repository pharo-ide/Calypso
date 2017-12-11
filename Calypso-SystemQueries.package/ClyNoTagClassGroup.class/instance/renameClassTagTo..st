operations
renameClassTagTo: newTag
	
	self classes do: [ :each | each tagWith: newTag]