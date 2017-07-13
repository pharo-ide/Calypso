building groups
addMethodGroupsTo: items

	noTagGroup ifNotNil: [ 
		items add: noTagGroup asEnvironmentItem ].

	classes do: [ :each | each tagsForMethods do: [ :eachTag |	
		methodGroups at: eachTag ifAbsentPut: [ClyTaggedMethodGroup classes: classes tag: eachTag]	
	] ].
		
	methodGroups do: [ :each | items add: each asEnvironmentItem ]