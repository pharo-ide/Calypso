testing
doesClassHaveMethodWithCritiques: aClass
	
	^aClass localMethods anySatisfy: [ :eachMethod | 
		self doesObjectHaveCritiques: eachMethod ]