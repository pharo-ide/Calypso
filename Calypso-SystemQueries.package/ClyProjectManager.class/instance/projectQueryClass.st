queries
projectQueryClass
	
	^ packageManagers 
		detect: [ :each | each customQueryClass isNotNil ] 
		ifFound: [ :found | found customQueryClass ] 
		ifNone: [ ClyAllProjects ]