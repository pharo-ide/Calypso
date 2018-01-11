tests
testComparingWithAnotherAsyncQueryWithDifferentAsyncResult

	| anotherQuery |
	anotherQuery := query semiAsync.
	
	self deny: query = anotherQuery