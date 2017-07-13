building
buildFromClasses: classes
	| item |
	classes do: [ :each | 
		item := ClyEnvironmentItem named: each name with: each.
		items add: item]