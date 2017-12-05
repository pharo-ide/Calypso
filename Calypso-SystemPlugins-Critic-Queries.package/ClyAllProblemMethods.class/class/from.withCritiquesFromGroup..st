instance creation
from: aScope withCritiquesFromGroup: critiqueGroupName
	^self 
		from: aScope 
		withCritiquesFrom: (ClyConcreteGroupCritiques 
			filter: ClyAllMethodCritiques new from: aScope byGroup: critiqueGroupName)