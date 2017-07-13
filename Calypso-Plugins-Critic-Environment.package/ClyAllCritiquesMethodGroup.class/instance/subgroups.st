testing
subgroups

	| subgroups |
	subgroups := Dictionary new.
	
	classes do: [ :eachClass | 
		critic buildClassCritiqueGroupsFor: eachClass on: subgroups].
	subgroups do: [ :each | 
		each classes: classes; critic: critic ].
	
	^subgroups values