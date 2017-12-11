tests
testIncludesAllContextsWhenTheyFitInCache
	
	self buildStackFrom: #(topMethodInStack method1InStack bottomMethodInStack).
		
	self assert: actualObjects asArray equals: contexts asArray