execution
buildResult: aQueryResult
		
	| result |
	result := OrderedCollection new.
	
	self analyzedObjectsDo: [ :each | result addAll: each critiques].

	aQueryResult fillWith: result