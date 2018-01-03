meta level
methodsDo: aBlock

	self classesDo: [ :eachClass | 
		eachClass localMethods do: aBlock ]