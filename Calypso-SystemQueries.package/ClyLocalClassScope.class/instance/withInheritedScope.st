converting
withInheritedScope

	| fullScope |
	fullScope := self , self asInheritedScope. 
	fullScope name: self class hierarchyScopeName.
	^fullScope