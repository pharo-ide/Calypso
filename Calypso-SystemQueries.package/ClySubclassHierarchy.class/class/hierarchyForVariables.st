variable hierarchy
hierarchyForVariables
	^hierarchyForVariables ifNil: [ 
		hierarchyForVariables := self inverse]