building groups
buildMethodGroupsFor: aMethod

	| group tags |
	tags := aMethod tags.
	tags isEmpty ifTrue: [ 
		noTagGroup ifNil: [ noTagGroup := ClyNoTagMethodGroup classes: classes].
		^self].
		
	tags reject: [ :eachTag | eachTag beginsWith: '*' ] thenDo: [ :eachTag | 
		group := methodGroups at: eachTag ifAbsentPut: [ 
			ClyTaggedMethodGroup tag: eachTag ].
		group addClass: aMethod methodClass]