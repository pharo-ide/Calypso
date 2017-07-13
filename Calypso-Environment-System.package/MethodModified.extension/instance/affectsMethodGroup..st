*Calypso-Environment-System
affectsMethodGroup: aMethodGroup

	^(aMethodGroup canIncludeMethod: self oldMethod) 
		or: [ aMethodGroup canIncludeMethod: self newMethod ]