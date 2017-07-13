building groups
buildClassGroupsFor: aClass

	| classTags |
	classTags := aClass tags.
	classTags ifEmpty: [ 
		classGroups detect: [ :each | each class = ClyNoTagClassGroup ] ifNone: [  
			classGroups at: package name put: (ClyNoTagClassGroup in: package) ].
		^self ].
	
	classTags do: [ :eachTag |
		classGroups at: eachTag ifAbsentPut: [ 
			ClyTaggedClassGroup in: package tag: eachTag]]