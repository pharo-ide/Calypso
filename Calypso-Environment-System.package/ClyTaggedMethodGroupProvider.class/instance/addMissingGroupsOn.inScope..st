building groups
addMissingGroupsOn: methodGroups inScope: aClassScope
	
	aClassScope classesDo: [ :each | each tagsForMethods do: [ :eachTag |	
		methodGroups at: eachTag ifAbsentPut: [
			ClyTaggedMethodGroup on: (ClyTaggedMethods by: eachTag from: aClassScope)]	
	]].

	methodGroups at: ClyNoTagMethodGroup groupName ifPresent: [ :existing | 
		methodGroups 
			at: ClyNoTagMethodGroup groupName 
			put: (ClyNoTagMethodGroup on: (ClyUntaggedMethods from: aClassScope))]