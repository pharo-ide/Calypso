accessing
groupItemsByType

	| groups |
	groups := IdentityDictionary new.
	
	items do: [ :each | | group |
		group := groups at: each type ifAbsentPut: [ OrderedCollection new ].
		group add: each actualObject].
	
	^groups