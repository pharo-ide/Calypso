*Calypso-SystemPlugins-Undeclared-Queries
usesUndeclares
	"Pharo 6 is supported here where UndeclaredVariables was special exception 
	instead of LiteralVariable which explicitly represent undeclared variables"
	(UndeclaredVariable inheritsFrom: LiteralVariable) 
		ifTrue: [ 
			self literalsDo: [:each | 
				each class == UndeclaredVariable ifTrue: [^true]]]
		ifFalse: [
			"To support Pharo 6"
			self literalsDo: [:each | 
				(each class == Association and: [each key notNil]) ifTrue: [^true]]].
	
	^false