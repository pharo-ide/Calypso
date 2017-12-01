execution
buildResult: aQueryResult
		
	| result |
	result := OrderedCollection new.
	
	self analyzedObjectsDo: [ :each | each critiques do: [ :critique | 
			(self selectsCritique: critique) ifTrue: [result add: critique]]].

	aQueryResult fillWith: result