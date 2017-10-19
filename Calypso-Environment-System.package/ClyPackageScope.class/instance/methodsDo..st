queries
methodsDo: aBlock
	self definedClassesDo: [:class | 
		class localMethods do: aBlock.
		class classSide localMethods do: aBlock].
	
	self packagesDo: [ :package | 
		package extensionMethods do: aBlock ]