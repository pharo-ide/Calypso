accessing
methodTags: tagsArray
	super methodTags: tagsArray.
	
	self hasUnacceptedEdits ifFalse: [ self tagEditingMethod: editingMethod]