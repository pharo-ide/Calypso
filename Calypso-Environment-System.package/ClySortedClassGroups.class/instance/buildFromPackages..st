building
buildFromPackages: packages
	packages ifEmpty: [ ^self ].
	packages size > 1 ifTrue: [ self error: 'Multiple packages is not supported!'].	
		
	self buildFromPackage: packages first