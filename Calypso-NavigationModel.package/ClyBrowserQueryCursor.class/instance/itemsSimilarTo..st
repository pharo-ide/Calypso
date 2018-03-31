queries
itemsSimilarTo: sampleBrowserItems

	^cache 
		findItemsWith: (sampleBrowserItems collect: #actualObject)
		forAbsentDo: [ 
			^queryResult itemsSimilarTo: sampleBrowserItems]