accessing
methods
	^classes flatCollect: [ :eachClass |	self methodsToImplementAt: eachClass]