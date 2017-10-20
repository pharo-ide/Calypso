building groups
classGroupsDo: aBlock

	package definedClasses do: [ :eachClass | 
		self buildClassGroupsFor: eachClass ].
	
	package tagsForClasses do: [ :eachTag |	
		classGroups at: eachTag ifAbsentPut: [ClyTaggedClassGroup in: package tag: eachTag]	
	].

	(classGroups allSatisfy: [:each | each class = ClyNoTagClassGroup ])
		ifTrue: [ ^self ].	
		
	classGroups do: aBlock