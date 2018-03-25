queries
findItemsByComparingWith: sampleObjects using: comparisonBloc
	| rest found |
	self protectItemsWhile: [
		rest := OrderedCollection withAll: sampleObjects.
		found := OrderedCollection new.
		items doWithIndex: [ :existing :index |
			rest
				detect: [ :sample | comparisonBloc value: sample value: existing]
				ifFound: [ :sample | 
					found add: (self itemAt: index). 
					rest remove: sample.
					rest ifEmpty: [ ^found ] ]].	
		^found]