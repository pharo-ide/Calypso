queries
instanceVariablesDo: aBlock

	self classesDo: [ :eachClass | 
		self instanceVariablesOf: eachClass do: aBlock]