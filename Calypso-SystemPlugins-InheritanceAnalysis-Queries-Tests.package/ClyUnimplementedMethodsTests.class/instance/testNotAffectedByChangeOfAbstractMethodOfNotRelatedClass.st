tests
testNotAffectedByChangeOfAbstractMethodOfNotRelatedClass
	
	self deny: (query isAffectedByChangedMethod: self class >> #createQuery)