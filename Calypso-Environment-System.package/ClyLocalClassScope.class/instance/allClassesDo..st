queries
allClassesDo: aBlock
	basisObjects collect: [ :each | self resolveClass: each ] thenDo: aBlock