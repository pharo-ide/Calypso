execution
fixStateBeforeExecution
	super fixStateBeforeExecution.
	
	subqueries do: [ :each | each fixStateBeforeExecution ]