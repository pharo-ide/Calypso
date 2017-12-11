testing
representsScope: aScopeClass
	^subscopes anySatisfy: [ :each | each representsScope: aScopeClass ]