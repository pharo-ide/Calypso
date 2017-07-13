instance creation
fromCritiques: critiqueItems of: analyzedObject for: aBrowser
	^(self of: critiqueItems for: aBrowser)
		analyzedObject: analyzedObject 