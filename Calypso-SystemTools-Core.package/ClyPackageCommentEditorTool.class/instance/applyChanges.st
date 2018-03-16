operations
applyChanges

	self pendingText asString = self editingText ifFalse: [
		editingPackage packageManifest comment: self pendingText stamp: Author changeStamp].

	^true