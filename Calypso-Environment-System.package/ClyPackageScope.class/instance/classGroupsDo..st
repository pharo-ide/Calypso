queries
classGroupsDo: aBlock

	self classGroupProvidersDo: [ :groupProvider |
		groupProvider classGroupsDo: [:group | 
			aBlock value: group] ]