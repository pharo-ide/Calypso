building groups
addMissingGroupsOn: methodGroups inScope: aClassScope
	
	aClassScope classesDo: [ :each | each tagsForMethods do: [ :eachTag |	
		methodGroups at: eachTag ifAbsentPut: [
			ClyTaggedMethodGroup withMethodsFrom: aClassScope taggedBy: eachTag]	
	]].

	methodGroups at: ClyNoTagMethodGroup groupName ifPresent: [ :existing | 
		methodGroups 
			at: ClyNoTagMethodGroup groupName 
			put: (ClyNoTagMethodGroup withMethodsFrom: aClassScope)]