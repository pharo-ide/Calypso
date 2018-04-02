item decoration
decorateBrowserItem: anItem ofClass: aClass
	(aClass classSide includesLocalSelector: #isAbstract) ifTrue: [ 
		aClass instanceSide isAbstract ifTrue: [ anItem markWith: ClyAbstractItemTag ].
		^self].
		
	(self checkClassIsAbstract: aClass) ifTrue: [ 
		anItem markWith: ClyAbstractItemTag ]