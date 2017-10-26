building
addClassVariableGroupFrom: varsPerClass

	| group classVars |
	classVars := OrderedCollection new. 
	varsPerClass do: [ :vars | classVars addAll: vars]. 
	
	group := ClyClassVariablesMethodGroup classes: environmentScope basisObjects variables: classVars.
	items add: group asEnvironmentItem