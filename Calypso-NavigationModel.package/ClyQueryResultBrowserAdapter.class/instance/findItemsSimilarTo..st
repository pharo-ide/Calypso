queries
findItemsSimilarTo: sampleBrowserItems
	| rest found existingItem |
	self protectItemsWhile: [
		rest := sampleBrowserItems as: OrderedCollection.
		found := OrderedCollection new.
		rawResult items doWithIndex: [ :existing :index |
			existingItem := existing asCalypsoBrowserItem.
			rest
				detect: [ :sample | sample isSimilarTo: existingItem]
				ifFound: [ :sample | 
					found add: (self itemAt: index). 
					rest remove: sample.
					rest ifEmpty: [ ^found ] ]].	
		^found]