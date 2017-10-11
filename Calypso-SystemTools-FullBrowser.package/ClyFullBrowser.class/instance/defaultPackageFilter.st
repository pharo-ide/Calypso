accessing
defaultPackageFilter
	^DefaultPackageFilter ifNil: [ 
		DefaultPackageFilter := ClyTableFilterFactory of: ClyItemNameFilter using: ClyRegexPattern new]