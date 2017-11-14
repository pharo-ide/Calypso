accessing
methods
	^classScope flatCollect: [ :eachClass |	self methodsToImplementIn: eachClass]