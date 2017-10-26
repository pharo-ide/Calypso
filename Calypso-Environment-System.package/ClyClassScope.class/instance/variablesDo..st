queries
variablesDo: aBlock

	self classesDo: [ :eachClass | 
		self classVariablesOf: eachClass do: aBlock.
		self instanceVariablesOf: eachClass do: aBlock]
