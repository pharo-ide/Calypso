building groups
buildGroupsFrom: aClassScope
	
	| groups |
	groups := IdentityDictionary new.
	
	aClassScope classesDo: [ :eachClass |
		eachClass tagsForMethods do: [:eachTag | 
			groups at: eachTag ifAbsentPut: [ 
				ClyTaggedMethodGroup withMethodsFrom: aClassScope taggedBy: eachTag]]].

	^groups values