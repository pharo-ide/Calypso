queries
findItemsSimilarTo: sampleBrowserItems
	| rest found |
	self protectItemsWhile: [ 
		rest := sampleBrowserItems as: OrderedCollection.
		found := OrderedCollection new.	
		items do: [ :existing |
			rest
				detect: [ :sample | sample isSimilarTo: existing]
				ifFound: [ :sample | 
					existing prepareIn: environment.
					found add: existing. 
					rest remove: sample.
					rest ifEmpty: [ ^found ] ]].	
		^found]