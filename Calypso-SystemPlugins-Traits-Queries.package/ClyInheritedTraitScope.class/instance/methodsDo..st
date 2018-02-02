queries
methodsDo: aBlock

	basisObjects do: [ :originalClass | 
		self allClassesRelatedTo: originalClass do: [:trait | | actualClassSide |
			actualClassSide := trait isClassSide 
				ifTrue: [ originalClass classSide ] ifFalse: [ originalClass instanceSide ].
			actualClassSide methods 
				select: [:installedMethod | installedMethod origin = trait  ]
				thenDo: aBlock ]]