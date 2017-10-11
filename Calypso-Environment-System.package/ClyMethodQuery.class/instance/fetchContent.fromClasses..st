execution
fetchContent: anEnvironmentContent fromClasses: classes

	| methods |
	methods := classes flatCollect: [ :eachClass | 
		self selectMethodsInClass: eachClass].
	
	anEnvironmentContent buildFromMethods: methods