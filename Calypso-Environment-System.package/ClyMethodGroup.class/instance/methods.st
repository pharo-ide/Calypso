accessing
methods
	^classScope flatCollect: [ :eachClass | 
		eachClass localMethods select:  [:method | self includesMethod: method ] ]