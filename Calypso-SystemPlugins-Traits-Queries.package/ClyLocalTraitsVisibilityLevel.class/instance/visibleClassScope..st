accessing
visibleClassScope: aScope
	super 	visibleClassScope: aScope.
	extraClassScope := (visibleClassScope asScope: ClyInheritedTraitScope).
	extraClassScope localClassScope: visibleClassScope class.
	self detectActiveState 