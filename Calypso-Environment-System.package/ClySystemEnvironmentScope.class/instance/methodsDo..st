queries
methodsDo: aBlock
	
	self classesDo: [:class | 
		class instanceSide localMethods do: aBlock.
		class classSide localMethods do: aBlock]