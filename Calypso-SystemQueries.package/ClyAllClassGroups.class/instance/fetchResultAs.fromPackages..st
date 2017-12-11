execution
fetchResultAs: aQueryResult fromPackages: packages
	packages ifEmpty: [ ^self ].
	packages size > 1 ifTrue: [ self error: 'Multiple packages is not supported!'].	
			
	self fetchResultAs: aQueryResult fromPackage: packages first