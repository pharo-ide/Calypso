queries
findItemsSimilarTo: sampleEnvironmentItems
	| rest found existingItem |
	actualResult protectItemsWhile: [
		rest := sampleEnvironmentItems as: OrderedCollection.
		found := OrderedCollection new.	
		actualResult items doWithIndex: [ :existing :index |
			existingItem := existing asCalypsoBrowserItem.
			rest
				detect: [ :sample | sample isSimilarTo: existingItem]
				ifFound: [ :sample | 
					existingItem position: index.
					existingItem prepareIn: self environment.
					found add: existingItem. 
					rest remove: sample.
					rest ifEmpty: [ ^found ] ]].	
		^found]