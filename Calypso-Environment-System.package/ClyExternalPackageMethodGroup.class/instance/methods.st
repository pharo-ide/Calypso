accessing
methods
	^classScope flatCollect: [ :eachClass | 
		(package extensionSelectorsForClass: eachClass) collect: [ :selector |
				eachClass >> selector ] as: Array ]