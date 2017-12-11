tests
testNotExecutedFromSingleScopeWhenAllSubqueriesAreFromEmptyScope
	<expectedFailure>
	"Async query forbid creation on several subqueries.
	It shoud always wrap single query"
	super testNotExecutedFromSingleScopeWhenAllSubqueriesAreFromEmptyScope