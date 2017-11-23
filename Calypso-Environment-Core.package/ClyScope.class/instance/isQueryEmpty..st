queries
isQueryEmpty: aQuery
	aQuery ensureScope: self.
	
	^environment isQueryEmpty: aQuery