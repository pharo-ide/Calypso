*Calypso-SystemPlugins-InheritanceAnalysis-Queries
isOverride

	^(self origin superclass ifNotNil: [ :c | c lookupSelector: self selector]) notNil