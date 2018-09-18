building
fillWith: critiques
	| groups |
	groups := Dictionary new.
	
	critiques do: [ :eachCritique |
		self buildMethodGroupWithCritique: eachCritique on: groups ].
	
	groups do: [ :each | items add: each  ]