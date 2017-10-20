enumerating
classesDo: aBlock
	basisObjects collect: [ :each | self resolveClass: each ] thenDo: aBlock