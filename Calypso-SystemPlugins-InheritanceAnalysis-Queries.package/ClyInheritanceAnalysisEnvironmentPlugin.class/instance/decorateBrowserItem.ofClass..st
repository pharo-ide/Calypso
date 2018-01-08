item decoration
decorateBrowserItem: anItem ofClass: aClass
	(aClass respondsTo: #isAbstract) ifTrue: [ 
		aClass isAbstract ifTrue: [ anItem markWith: ClyAbstractItemTag ].
		^self].
		
	(self checkClassIsAbstract: aClass) ifTrue: [ 
		anItem markWith: ClyAbstractItemTag ]