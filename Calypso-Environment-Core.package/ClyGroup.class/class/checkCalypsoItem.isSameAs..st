testing
checkCalypsoItem: aGroup isSameAs: aGroup2
	^(super checkCalypsoItem: aGroup isSameAs: aGroup2)
		or: [ aGroup = aGroup2 ]