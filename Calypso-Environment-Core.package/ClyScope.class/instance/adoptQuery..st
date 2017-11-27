queries
adoptQuery: aQuery
	"Not all kind of scopes support any kind of query.
	Idea is to be able adopt given query instance by target scope.
	For example composite scope will create composite query 
	on top of subqueries created for each subscope from given aQuery.
	This method should return adopted query instance which can be given query itself
	if it is appropriate"
	self subclassResponsibility 