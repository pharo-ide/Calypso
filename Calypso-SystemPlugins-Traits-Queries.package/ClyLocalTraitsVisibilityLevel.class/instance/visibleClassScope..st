accessing
visibleClassScope: aScope
	super 	visibleClassScope: aScope.
	extraClassScope := (visibleClassScope asScope: ClyInheritedTraitScope).
	extraClassScope localScopeClass: visibleClassScope class.
	self detectActiveState 