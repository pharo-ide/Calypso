queries
extendedClassesDo: aBlock 
	self packagesDo: [ :package | 
		package extendedClasses do: aBlock]