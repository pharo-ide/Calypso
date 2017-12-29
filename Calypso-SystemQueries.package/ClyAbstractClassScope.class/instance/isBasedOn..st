testing
isBasedOn: aBasisClass
	"My actual basis are given basis classes extended by concrete meta levels 
	which are defined by each subclass.
	So I could not use simple check from superclass (basis #includes:) 
	because I need extra meta level logic"
	
	basisObjects do: [ :each | 
		self metaLevelsOf: each do: [:concreteMetaLevel |
			concreteMetaLevel = aBasisClass ifTrue: [ ^true ]  ] ].
	^false