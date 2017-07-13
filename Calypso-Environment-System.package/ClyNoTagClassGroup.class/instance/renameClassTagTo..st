operations
renameClassTagTo: newTag
	
	self definedClasses do: [ :each | each tagWith: newTag]