protection
protectAccessWhile: aBlock

	^accessGuard critical: [
		aBlock value
	]