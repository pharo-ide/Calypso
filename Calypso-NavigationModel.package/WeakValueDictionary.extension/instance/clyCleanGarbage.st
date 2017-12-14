*Calypso-NavigationModel
clyCleanGarbage

	| firstFound |
	array withIndexDo: [:ass :index | 
		(ass notNil and: [ass value isNil]) ifTrue: [ 
			array at: index put: nil.
			tally := tally - 1.
			firstFound ifNil: [firstFound := index]]].
	
	firstFound ifNotNil: [ 
		self fixCollisionsFrom: firstFound]