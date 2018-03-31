tests
testBuildShouldExecuteBuildingQuery
	"Building query for browser result is actual query which retrives raw result"
	queryResult rebuild.
	
	self assert: queryResult rawResult == queryResult buildingQuery execute