building
fillWith: classes

	| definedClasses extensions |
	definedClasses := IdentitySet withAll: classes.
	extensions := OrderedCollection new.
	classes do: [ :each | 
		(self isQueryScopeDefinesClass: each) ifFalse: [ 
			definedClasses remove: each.
			extensions add: each]].
	items := self buildItemsOn: definedClasses.
	items addAll: (self buildExtensionItemsOn: extensions)