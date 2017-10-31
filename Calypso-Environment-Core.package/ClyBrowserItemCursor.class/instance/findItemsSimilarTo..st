queries
findItemsSimilarTo: sampleEnvironmentItems

	^cache 
		findItemsWith: (sampleEnvironmentItems collect: #actualObject)
		forAbsentDo: [ 
			^queryResult findItemsSimilarTo: sampleEnvironmentItems]