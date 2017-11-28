queries
methodsDo: aBlock

	self classesDo: [ :eachClass | 
		self methodsOf: eachClass do: aBlock ]