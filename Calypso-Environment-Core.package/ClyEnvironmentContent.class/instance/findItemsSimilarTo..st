queries
findItemsSimilarTo: sampleEnvironmentItems
	| rest found |
	self rebuildIfNeeded.
	rest := sampleEnvironmentItems as: OrderedCollection.
	found := OrderedCollection new.	
	items do: [ :existing |
		rest
			detect: [ :sample | sample isSimilarTo: existing]
			ifFound: [ :sample | 
				environment resolveItem: existing of: self.
				found add: existing. 
				rest remove: sample.
				rest ifEmpty: [ ^found ] ]].	
	^found