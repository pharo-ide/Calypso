building
fillWith: classes

	| hierarchyMap |
	items := OrderedCollection new: classes size.
	hierarchyMap := inverse 
		ifTrue: [hierarchy buildInverseFrom: classes]
		ifFalse: [ hierarchy buildFrom: classes ].
	
	hierarchyMap roots do: [ :root | 
		self buildItemFor: root from: hierarchyMap depth: 0]