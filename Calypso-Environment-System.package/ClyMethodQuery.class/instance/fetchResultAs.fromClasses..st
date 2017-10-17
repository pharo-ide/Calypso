execution
fetchResultAs: aQueryResult fromClasses: classes

	| methods |
	methods := classes flatCollect: [ :eachClass | 
		self selectMethodsInClass: eachClass].
	
	aQueryResult buildFromMethods: methods