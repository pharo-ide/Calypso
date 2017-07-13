operations
renameClassTagTo: newTag
	self definedClasses do: [ :each |
		each tagWith: newTag.
		each untagFrom: tag].
	
	(package tagsForClasses includes: newTag) 
		ifFalse: [ package addClassTag: newTag ].
	package removeClassTag: tag