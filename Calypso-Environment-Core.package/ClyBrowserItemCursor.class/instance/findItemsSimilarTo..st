queries
findItemsSimilarTo: sampleBrowserItems

	^cache 
		findItemsWith: (sampleBrowserItems collect: #actualObject)
		forAbsentDo: [ 
			^queryResult findItemsSimilarTo: sampleBrowserItems]