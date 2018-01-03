*Calypso-SystemQueries
ensureSystemDefinition: aBlock
	
	self getProperty: ClyItemDefinitionProperty ifAbsent: [ 
		self addProperty: aBlock value]