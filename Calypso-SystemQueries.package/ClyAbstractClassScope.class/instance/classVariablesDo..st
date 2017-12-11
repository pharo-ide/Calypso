queries
classVariablesDo: aBlock

	self classesDo: [ :eachClass | 
		self classVariablesOf: eachClass do: aBlock]