testing
hasProperty: propertyClass

	^properties anySatisfy: [ :each | each isKindOf: propertyClass ]