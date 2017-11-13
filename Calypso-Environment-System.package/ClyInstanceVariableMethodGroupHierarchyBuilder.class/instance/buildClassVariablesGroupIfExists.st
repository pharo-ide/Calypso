building
buildClassVariablesGroupIfExists

	| vars |
	vars := IdentitySet new.
	rootClasses do: [ :eachRoot | 
		self hierarchyPairsOf: eachRoot instanceSide do: [ :parent :child |
			vars addAll: parent classVariables]].
	
	vars ifEmpty: [ ^self ].
	items add: (ClyClassVariablesMethodGroup classes: rootClasses variables: vars) asCalypsoBrowserItem