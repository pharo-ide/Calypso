testing
isClassSelected: aClass

	^self selection items anySatisfy: [ :methodItem |
		(methodItem getProperty: ClyDefinitionProperty) 
			definitionClass == aClass ]