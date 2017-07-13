building groups
buildGroupItemsOn: items

	package definedClasses do: [ :eachClass | 
		self buildClassGroupsFor: eachClass ].
	
	package tagsForClasses do: [ :eachTag |	
		classGroups at: eachTag ifAbsentPut: [ClyTaggedClassGroup in: package tag: eachTag]	
	].

	(classGroups allSatisfy: [:each | each class = ClyNoTagClassGroup ])
		ifTrue: [ ^self ].	
		
	classGroups do: [ :each | items add: each asEnvironmentItem ]