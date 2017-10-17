queries
findItemsSimilarTo: sampleEnvironmentItems

	^cache 
		findItemsWith: (sampleEnvironmentItems collect: #actualObject)
		forAbsentDo: [ 
			^observedContent findItemsSimilarTo: sampleEnvironmentItems]