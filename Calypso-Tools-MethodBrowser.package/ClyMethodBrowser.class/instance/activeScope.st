accessing
activeScope
	^activeScope ifNil: [ activeScope := queryScopes first ]