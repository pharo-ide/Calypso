operations
renameClassTagTo: newTag
	self classes do: [ :each |
		each tagWith: newTag.
		each untagFrom: self tag].
	
	self classQuery scope packagesDo: [ :each | 
		(each tagsForClasses includes: newTag) 
			ifFalse: [ each addClassTag: newTag ].
		each removeClassTag: self tag]