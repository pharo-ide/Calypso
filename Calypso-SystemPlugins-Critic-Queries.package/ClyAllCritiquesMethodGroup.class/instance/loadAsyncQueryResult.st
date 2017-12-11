accessing
loadAsyncQueryResult
	"Here method query is based on actual critiques query. 
	And each subgroup method query is also based on it. 
	So we need to hold reference to based critue query result instead of method query"
	^methodQuery loadCritiquesAsync