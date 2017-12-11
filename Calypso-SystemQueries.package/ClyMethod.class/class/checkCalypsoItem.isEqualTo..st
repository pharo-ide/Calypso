testing
checkCalypsoItem: aCompiledMethod isEqualTo: anotherCompiledMethod
	aCompiledMethod == anotherCompiledMethod ifTrue: [ ^true ].
	
	^aCompiledMethod origin == anotherCompiledMethod origin 
		and: [ aCompiledMethod selector == anotherCompiledMethod selector ]