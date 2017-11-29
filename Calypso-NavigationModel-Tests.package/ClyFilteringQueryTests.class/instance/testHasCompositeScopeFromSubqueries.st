tests
testHasCompositeScopeFromSubqueries
	<expectedFailure>
	"Filtering query is supposed to be created on single subquery.
	In that case scope will be same as subquery and composite will not be created"
	super testHasCompositeScopeFromSubqueries