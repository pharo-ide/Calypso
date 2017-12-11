running
createQuery
	| exampleCritique |
	exampleCritique := self methodWithCritiques critiques anyOne.
	
	^ClyConcreteGroupCritiques 
		filter: ClyAllMethodCritiques new
		from: self scopeWithCritiques 
		byGroup: exampleCritique rule group