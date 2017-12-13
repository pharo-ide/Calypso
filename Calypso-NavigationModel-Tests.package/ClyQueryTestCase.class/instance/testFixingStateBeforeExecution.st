tests
testFixingStateBeforeExecution

	query fixStateBeforeExecution.
	
	self assert: query isReadOnlyObject.
	self assert: query scope isReadOnlyObject