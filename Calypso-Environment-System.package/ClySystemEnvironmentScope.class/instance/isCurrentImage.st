testing
isCurrentImage
	self isBasedOnSingleBasis ifFalse: [ ^false ].
	
	^basisObjects anyOne == ClySystemEnvironment currentImage