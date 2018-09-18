instance creation
from: aScope withCritiquesFromGroup: critiqueGroupName
	^self 
		from: aScope 
		withCritiquesFrom: (ClyConcreteGroupCritiqueQuery 
			filter: ClyAllMethodCritiqueQuery new from: aScope byGroup: critiqueGroupName)