controlling
cleanAfterRemove.
	self detachFromSystem.
	decorators do: [ :each | each toolWasRemoved ]