queries
classesDo: aBlock
	self projectsDo: [ :project |
		project classes do: aBlock ]