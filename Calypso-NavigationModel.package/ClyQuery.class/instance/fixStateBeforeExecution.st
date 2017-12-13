execution
fixStateBeforeExecution
	"Here the query should become readonly object together with all required internal state. By default it is only instance itself. But subclasses like composite query force additional objects (subqueries) to fix their state.
	If query needs additional state for execution 
	it should retrieve it in prepare method which is executed before readonly fix"
	self prepareStateBeforeExecution.
	self beReadOnlyObject.
	scope beReadOnlyObject