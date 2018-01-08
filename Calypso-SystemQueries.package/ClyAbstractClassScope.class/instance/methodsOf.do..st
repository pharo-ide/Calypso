private
methodsOf: aClass do: aBlock

	self metaLevelsOf: aClass do: [ :concreteMetaLevelClass |
		concreteMetaLevelClass localMethods do: aBlock ]