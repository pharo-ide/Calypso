instance creation
withMethodsOf: aClass toShowIn: aClassScope
	
	| methodQuery |
	methodQuery := ClyAllMethods 
		from: (aClassScope asScope: ClyClassScope of: { aClass }).
				
	^(self named: aClass name on: methodQuery)
		visibilityLevels: { ClySuperclassVisibilityLevel of: aClassScope toShow: aClass }