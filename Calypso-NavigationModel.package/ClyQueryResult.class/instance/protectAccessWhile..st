private
protectAccessWhile: aBlock

	^accessGuard critical: [
		aBlock value
	]