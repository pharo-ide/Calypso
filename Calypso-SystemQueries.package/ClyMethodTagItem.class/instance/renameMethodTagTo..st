operations
renameMethodTagTo: newTag 
	
	self methods do: [ :each |
		each tagWith: newTag.
		each untagFrom: self tag].
	
	self methodQuery scope classesDo:  [ :each | 
		(each tagsForMethods includes: newTag) 
			ifFalse: [ each addMethodTag: newTag ].
		each removeMethodTag: self tag]