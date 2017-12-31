queries
methodsDo: aBlock

	self classesDo: [ :eachClass | 
		self metaLevelsOf: eachClass do: [ :concreteMetaLevelClass |
			concreteMetaLevelClass localMethods do: aBlock ] ]