*Calypso-Environment-System
asSystemEnvironmentItem

	| item |
	item := ClyEnvironmentItem named: self selector with: self.
	item addProperty: (ClyMethodDefinitionProperty of: self).
	^item