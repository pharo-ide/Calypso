*Calypso-Environment-System
asSystemEnvironmentItem

	| item |
	item := ClyFormattedResultItem named: self selector with: self.
	item addProperty: (ClyMethodDefinitionProperty of: self).
	^item