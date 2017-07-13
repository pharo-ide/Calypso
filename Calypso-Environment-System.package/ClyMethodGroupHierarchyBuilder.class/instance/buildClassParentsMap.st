building
buildClassParentsMap
	| classParents |
	classParentsMap := IdentityDictionary new.

	rootClasses do: [ :eachClass |
		self hierarchyPairsOf: eachClass do: [ :parentClass :childClass |
			classParents := classParentsMap at: childClass ifAbsentPut: [ IdentitySet new ].
			classParents add: parentClass].
	]