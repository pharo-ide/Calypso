operations
renameMethodTagTo: newTag 
	
	self methods do: [ :each |
		each tagWith: newTag.
		each untagFrom: tag].
	
	classes do: [ :each | 
		(each tagsForMethods includes: newTag) 
			ifFalse: [ each addMethodTag: newTag ].
		each removeMethodTag: tag]