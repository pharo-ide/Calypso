building
fillWith: classes

	| definedClasses extensions |
	definedClasses := IdentitySet withAll: classes.
	extensions := OrderedCollection new.
	classes do: [ :each | 
		(self isQueryScopeDefinesClass: each) ifFalse: [ 
			definedClasses remove: each.
			extensions add: each]].
	items := self buildItemsFrom: definedClasses.
	items addAll: (self buildExtensionItemsFrom: extensions)