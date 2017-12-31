*Calypso-SystemPlugins-InheritanceAnalysis-Queries
isOverriding

	^(self origin superclass ifNotNil: [ :c | c lookupSelector: self selector]) notNil