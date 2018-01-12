queries
findItemsSimilarTo: sampleEnvironmentItems
	| rest found |
	actualResult protectItemsWhile: [ 
		rest := sampleEnvironmentItems as: OrderedCollection.
		found := OrderedCollection new.	
		actualResult items do: [ :existing |
			rest
				detect: [ :sample | sample isSimilarTo: existing]
				ifFound: [ :sample | 
					existing prepareIn: self environment.
					found add: existing. 
					rest remove: sample.
					rest ifEmpty: [ ^found ] ]].	
		^found]