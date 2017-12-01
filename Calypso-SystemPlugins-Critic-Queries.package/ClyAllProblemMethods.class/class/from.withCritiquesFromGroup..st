instance creation
from: aScope withCritiquesFromGroup: critiqueGroupName
	^self 
		from: aScope 
		withCritiquesFrom: (ClyConcreteGroupMethodCritiques group: critiqueGroupName from: aScope)