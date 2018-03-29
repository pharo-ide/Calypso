queries
find: sampleObjects comparingToActualItemsBy: comparisonBlock

	^super
		find: sampleObjects 
		comparingToActualItemsBy: [:existing :sample | 
			comparisonBlock value: existing actualObject value: sample]