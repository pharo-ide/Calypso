building
fillWith: classes

	| definedClasses extensions |
	definedClasses := classes asIdentitySet.
	extensions := OrderedCollection new.
	classes do: [ :each | 
		(self isQueryScopeDefinesClass: each) ifFalse: [ 
			definedClasses remove: each.
			extensions add: each]].
	items := ClyHierarchicallySortedClasses buildItemsOn: definedClasses.
	items addAll: (ClyHierarchicallySortedClasses buildItemsOn: extensions)