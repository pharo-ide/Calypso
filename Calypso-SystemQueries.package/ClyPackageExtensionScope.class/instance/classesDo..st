queries
classesDo: aBlock 
	self packagesDo: [ :package | 
		package extendedClasses do: aBlock]