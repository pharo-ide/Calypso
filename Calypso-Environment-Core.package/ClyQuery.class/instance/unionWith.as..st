composition
unionWith: typedQueries as: aQueryResult
	"Subclasses should return ClyUnionQuery with collection of given subqueries together with itself or own subqueries if exists.
	To create ClyUnionQuery they can yse short version ClyQuery unionFrom:"
	self subclassResponsibility 