accessing
visibilityLevels: levelCollection
	visibilityLevels := levelCollection reject: [ :each | each isRedundant ]