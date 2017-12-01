running
createQuery
	| exampleCritique |
	exampleCritique := self methodWithCritiques critiques anyOne.
	
	^ClyConcreteGroupMethodCritiques 
		group: exampleCritique rule group
		from: self scopeWithCritiques 