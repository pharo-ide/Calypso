building groups
buildGroupsFrom: aClassScope
	
	| groups |
	groups := IdentityDictionary new.
	
	aClassScope classesDo: [ :eachClass |
		eachClass tagsForMethods do: [:eachTag | 
			groups at: eachTag ifAbsentPut: [ 
				ClyMethodTagItem named: eachTag withMethodsFrom: aClassScope]]].

	^groups values