building
addClassVariableGroupFrom: varsPerClass

	| group classVars |
	classVars := OrderedCollection new. 
	varsPerClass do: [ :vars | classVars addAll: vars]. 
	
	group := ClyClassVariablesMethodGroup classes: self basisClasses variables: classVars.
	items add: group asCalypsoBrowserItem