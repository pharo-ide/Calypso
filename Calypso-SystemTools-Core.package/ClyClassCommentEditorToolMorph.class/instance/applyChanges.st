operations
applyChanges

	self pendingText asString = self editingText asString ifFalse: [
		editingClass comment: self pendingText stamp: Author changeStamp].

	^true