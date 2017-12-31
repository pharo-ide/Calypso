*Calypso-SystemQueries
definesOverridesOf: aMethod

	aMethod origin isInstanceSide 
		ifTrue: [  
			(self definesOverridesOf: aMethod in: classDefinedSelectors) ifTrue: [^true].
			(self definesOverridesOf: aMethod in: classExtensionSelectors) ifTrue: [^true]]
		ifFalse: [ 
			(self definesOverridesOfClassSide: aMethod in: metaclassDefinedSelectors) ifTrue: [^true].
			(self definesOverridesOfClassSide: aMethod in: metaclassExtensionSelectors) ifTrue: [^true]].
	
	^false