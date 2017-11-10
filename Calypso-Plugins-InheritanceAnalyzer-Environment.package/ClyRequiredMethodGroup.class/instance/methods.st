accessing
methods
	^classes flatCollect: [ :eachClass |	self methodsToImplementIn: eachClass]