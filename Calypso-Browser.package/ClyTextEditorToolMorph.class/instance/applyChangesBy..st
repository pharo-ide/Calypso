events handling
applyChangesBy: aBlock

	applyingChanges := true.
	^aBlock ensure: [ applyingChanges := false]