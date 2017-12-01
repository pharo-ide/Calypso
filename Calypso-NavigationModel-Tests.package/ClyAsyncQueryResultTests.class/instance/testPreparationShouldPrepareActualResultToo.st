tests
testPreparationShouldPrepareActualResultToo
	| newQuery newResult |
	newQuery := self createQuery.
	newResult := queryResult prepareNewFor: newQuery in: environment.
	
	self assert: newResult actualResult class equals: queryResult actualResult class.
	self deny: newResult actualResult == queryResult actualResult.
	self assert: newResult actualResult buildingQuery == newQuery.
	self assert: newResult actualResult environment equals: environment.