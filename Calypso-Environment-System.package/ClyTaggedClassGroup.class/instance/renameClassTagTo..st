operations
renameClassTagTo: newTag
	self definedClasses do: [ :each |
		each tagWith: newTag.
		each untagFrom: self tag].
	
	(package tagsForClasses includes: newTag) 
		ifFalse: [ package addClassTag: newTag ].
	package removeClassTag: self tag