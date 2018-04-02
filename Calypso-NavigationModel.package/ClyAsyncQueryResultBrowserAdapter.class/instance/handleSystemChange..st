system changes
handleSystemChange: aSystemAnnouncement
	self halt.
	((aSystemAnnouncement isKindOf: ClyAsyncQueryIsDone) 
		and: [ aSystemAnnouncement queryResult == rawResult ])
			ifTrue: [ ^self itemsChanged ].
	
	super handleSystemChange: aSystemAnnouncement