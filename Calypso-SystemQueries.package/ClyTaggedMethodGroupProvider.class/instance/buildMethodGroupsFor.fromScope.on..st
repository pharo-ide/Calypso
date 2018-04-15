building groups
buildMethodGroupsFor: aMethod fromScope: aClassScope on: groups

	| group tags |
	tags := aMethod tags.
	tags isEmpty ifTrue: [tags := { ClyUnclassifiedSystemItem groupName }].

	tags reject: [ :eachTag | eachTag beginsWith: '*' ] thenDo: [ :eachTag | 
		group := groups at: eachTag ifAbsentPut: [ 	
			ClyMethodTagItem withMethodsFrom: aClassScope taggedBy: eachTag]]