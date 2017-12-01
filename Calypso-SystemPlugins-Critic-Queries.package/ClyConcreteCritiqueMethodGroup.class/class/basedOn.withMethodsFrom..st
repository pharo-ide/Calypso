instance creation
basedOn: aCritique withMethodsFrom: aScope

	| groupName methodQuery |
	groupName := aCritique rule group.
	methodQuery := ClyAllProblemMethods 
			from: self scope withCritiquesFromGroup: groupName.

	^self named: groupName asLowercase on: methodQuery