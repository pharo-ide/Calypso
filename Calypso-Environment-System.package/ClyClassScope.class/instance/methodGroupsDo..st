queries
methodGroupsDo: aBlock

	self methodGroupProvidersDo: [ :groupProvider |
		groupProvider methodGroupsIn: self do: [:group | 
			aBlock value: group] ]