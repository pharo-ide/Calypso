operations
applyChanges

	self pendingText asString = editingClass classCommentBlank asString ifFalse: [
		editingClass comment: self pendingText stamp: Author changeStamp].

	^true