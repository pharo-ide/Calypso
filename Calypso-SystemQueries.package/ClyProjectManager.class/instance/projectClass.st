accessing
projectClass

	^ packageManagers 
		detect: [ :each | each customProjectClass isNotNil ] 
		ifFound: [ :found | found customProjectClass ] 
		ifNone: [ ClyManagedProject ]