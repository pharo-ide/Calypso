running
createQuery
	| exampleCritique |
	exampleCritique := self methodWithCritiques critiques anyOne.
	
	^ClyConcreteGroupCritiqueQuery 
		filter: ClyAllMethodCritiqueQuery new
		from: self scopeWithCritiques 
		byGroup: exampleCritique rule group