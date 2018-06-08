converting
withInheritingScope

	| fullScope |
	fullScope := self , self asInheritingScope. 
	fullScope name: self class userHierarchyScopeName.
	^fullScope