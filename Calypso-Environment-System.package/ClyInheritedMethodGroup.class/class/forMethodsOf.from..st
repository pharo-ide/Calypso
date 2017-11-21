instance creation
forMethodsOf: aClass from: aClassScope
	
	| methodQuery |
	methodQuery := ClyAllMethods 
		from: (ClyClassScope of: { aClass } in: aClassScope environment).
				
	^(self named: aClass name on: methodQuery)
		visibilityLevels: { ClySuperclassVisibilityLevel of: aClassScope toShow: aClass }