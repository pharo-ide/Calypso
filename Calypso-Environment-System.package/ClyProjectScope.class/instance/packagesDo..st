queries
packagesDo: aBlock
	self projectsDo: [ :project |
		project packages do: aBlock ]