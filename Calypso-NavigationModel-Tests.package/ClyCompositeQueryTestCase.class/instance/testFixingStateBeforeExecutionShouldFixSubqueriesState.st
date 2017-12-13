tests
testFixingStateBeforeExecutionShouldFixSubqueriesState

	query fixStateBeforeExecution.
	
	query subqueries do: [ :each | 
		self assert: each isReadOnlyObject.
		self assert: each scope isReadOnlyObject]