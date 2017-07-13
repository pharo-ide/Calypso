testing
isEmpty
	^(classes anySatisfy: [ :eachClass | 
		eachClass localMethods anySatisfy:  [:method | self includesMethod: method ] ]) not