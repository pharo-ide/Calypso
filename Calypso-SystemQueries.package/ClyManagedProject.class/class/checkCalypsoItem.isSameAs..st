testing
checkCalypsoItem: aProject isSameAs: aProject2
	^(super checkCalypsoItem: aProject isSameAs: aProject2)
		or: [ aProject = aProject2 ]