execution
buildResult: aQueryResult 
	"For tests we need predictable order of query result items"
	
	aQueryResult fillWith: (scope basisObjects sorted: #printString ascending)