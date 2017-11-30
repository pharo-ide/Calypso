building
fillWith: classes

	| hierarchyMap |
	items := OrderedCollection new: classes size.
	hierarchyMap := hierarchy buildFrom: classes.
	
	hierarchyMap rootsDo: [ :root | 
		self buildItemFor: root from: hierarchyMap depth: 0]