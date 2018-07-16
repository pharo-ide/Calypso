queries
projectItemClass
	
	^ packageManagers 
		detect: [ :each | each customProjectItemClass isNotNil ] 
		ifFound: [ :found | found customProjectItemClass ] 
		ifNone: [ ClyManagedProject ]