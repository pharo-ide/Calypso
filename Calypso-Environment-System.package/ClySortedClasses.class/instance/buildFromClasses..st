building
buildFromClasses: classes
	| item |
	classes do: [ :each | 
		item := ClyBrowserItem named: each name with: each.
		items add: item]