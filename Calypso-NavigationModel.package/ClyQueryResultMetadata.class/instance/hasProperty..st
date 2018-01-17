testing
hasProperty: aPropertyClass

	^properties anySatisfy: [ :each | each isKindOf: aPropertyClass ]