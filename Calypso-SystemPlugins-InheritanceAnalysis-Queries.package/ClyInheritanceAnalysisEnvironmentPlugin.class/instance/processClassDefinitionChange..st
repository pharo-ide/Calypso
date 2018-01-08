controlling
processClassDefinitionChange: aClassDefinitionChange
	aClassDefinitionChange oldClassDefinition superclass ifNotNil: [:superclass |
		"Two definition changes are always triggered. 
		We always skip the first one when system is inconsistent state 
		which is reflected by following condition"
		(superclass subclasses includes: aClassDefinitionChange oldClassDefinition)
			ifTrue: [ ^self ] ].
	(aClassDefinitionChange oldClassDefinition superclass 
		= aClassDefinitionChange newClassDefinition superclass) ifTrue: [ ^self ].	
	
	self resetCacheOfClass: aClassDefinitionChange oldClassDefinition superclass.
	environment systemChanged: (
		ClyOverriddenSuperclassesChanged overridingSubclass: aClassDefinitionChange oldClassDefinition)