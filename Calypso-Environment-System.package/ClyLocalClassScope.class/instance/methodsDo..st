queries
methodsDo: aBlock

	self classesDo: [ :eachClass | 
		eachClass instanceSide localMethods do: aBlock.
		eachClass classSide localMethods do: aBlock]