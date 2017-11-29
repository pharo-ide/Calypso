testing
isBuilt
	containerTab ifNil: [ ^false ].
	^containerTab morph == self