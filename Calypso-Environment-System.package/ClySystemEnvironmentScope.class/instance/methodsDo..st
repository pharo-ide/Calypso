queries
methodsDo: aBlock
	
	self classesDo: [:class | 
		class localMethods do: aBlock]