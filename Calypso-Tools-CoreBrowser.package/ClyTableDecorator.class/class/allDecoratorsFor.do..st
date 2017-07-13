accessing
allDecoratorsFor: aBrowserContext do: aBlock

	self sortedDecorators do: [ :each | 
		(each wantsDecorateTableCellInContext: aBrowserContext) ifTrue: [ aBlock value: each ] ]