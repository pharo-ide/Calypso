tests
testHasCompositeScopeFromSubqueries
	<expectedFailure>
	"Async query must be created on single subquery.
	And in that case scope will be same as scope of this subquery"
	super testHasCompositeScopeFromSubqueries