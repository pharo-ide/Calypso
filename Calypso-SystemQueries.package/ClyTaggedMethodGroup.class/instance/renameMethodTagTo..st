operations
renameMethodTagTo: newTag 
	newTag = self tag ifTrue: [ ^self ].
	
	self methods do: [ :each |
		each tagWith: newTag.
		each untagFrom: self tag].
	
	methodQuery scope classesDo:  [ :each | 
		(each tagsForMethods includes: newTag) 
			ifFalse: [ each addMethodTag: newTag ].
		each removeMethodTag: self tag]