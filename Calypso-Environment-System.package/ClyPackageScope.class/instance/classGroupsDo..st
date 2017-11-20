queries
classGroupsDo: aBlock

	self classGroupProvidersDo: [ :groupProvider |
		groupProvider classGroupsIn: self do: [:group | 
			aBlock value: group] ]