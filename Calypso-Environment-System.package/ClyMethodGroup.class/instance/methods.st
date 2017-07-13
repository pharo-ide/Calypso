accessing
methods
	^classes flatCollect: [ :eachClass | 
		eachClass localMethods select:  [:method | self includesMethod: method ] ]