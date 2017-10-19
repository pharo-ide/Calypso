queries
definedClassesDo: aBlock 
	self packagesDo: [ :package | 
		package definedClasses do: aBlock]