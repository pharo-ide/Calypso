testing
subgroups

	| subgroups |
	subgroups := Dictionary new.
	
	classScope do: [ :eachClass | 
		critic buildClassCritiqueGroupsFor: eachClass on: subgroups].
	subgroups do: [ :each | 
		each classScope: classScope; critic: critic ].
	
	^subgroups values