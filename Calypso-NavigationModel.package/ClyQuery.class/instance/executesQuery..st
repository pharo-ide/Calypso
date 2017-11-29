testing
executesQuery: aTypedQueryClass
	"We should be able to check that given query executes particular kind of query class.
	It allows simple check for tools that desired kind of query is activated.
	Composite query should check all subqueries according to this logic"
	self subclassResponsibility 