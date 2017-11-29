accessing
childrenDataSource: aDataSource
	childrenDataSource := aDataSource.
	childrenDataSource ifNotNil: [ 
		childrenDataSource parentItem: self.
		childrenDataSource depth: self depth + 1]