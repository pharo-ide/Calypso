testing
checkItem: anEnvironmentItem isSimilarTo: anEnvironmentItem2 
	^anEnvironmentItem name = anEnvironmentItem2 name or: [ 
		self checkBasisObject: anEnvironmentItem actualObject isEqualTo: anEnvironmentItem2 actualObject ]