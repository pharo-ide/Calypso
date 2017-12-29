private
protectItemsWhile: aBlock

	^self protectAccessWhile: [ 
		self rebuildIfNeeded.
		aBlock value
	]