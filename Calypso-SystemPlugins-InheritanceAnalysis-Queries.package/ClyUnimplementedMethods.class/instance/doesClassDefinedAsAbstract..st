testing
doesClassDefinedAsAbstract: aClass
	^(aClass classSide includesLocalSelector: #isAbstract) and: [aClass isAbstract]