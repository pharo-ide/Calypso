queries
findItems: sampleObjects comparingBy: comparisonBloc
	"It returns array of indexes where items were successfuly compared to given sampleObjects.
	Comparison is perform by given block which is evaluated with two arguments:
		- first from sampleObjects array
		- last from items.
	n-th index in result points to item which is similar to n-th element of sampleObjects.
	n-th element have nil value when n-th sample object was not found in items"
	| rest foundIndexes |
	self protectItemsWhile: [
		rest := OrderedCollection withAll: sampleObjects.
		foundIndexes := Array new: sampleObjects size.
		items doWithIndex: [ :existing :index |
			rest
				detect: [ :sample | comparisonBloc value: sample value: existing]
				ifFound: [ :sample | 
					foundIndexes add: (self itemAt: index). 
					rest remove: sample.
					rest ifEmpty: [ ^foundIndexes ] ]].	
		^foundIndexes]