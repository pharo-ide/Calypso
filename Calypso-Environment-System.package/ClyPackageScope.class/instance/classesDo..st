queries
classesDo: aBlock
	self packagesDo: [ :package | 
		package definedClasses do: aBlock]