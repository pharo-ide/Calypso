building
buildFromMethodGroups: methodGroups
	
	methodGroups do: [ :eachGroup | self buildFromMethods: eachGroup methods]