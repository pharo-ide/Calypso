system changes
handleSystemChange: aSystemAnnouncement
	
	((aSystemAnnouncement isKindOf: ClyAsyncQueryIsDone) 
		and: [ aSystemAnnouncement queryResult == rawResult ])
			ifTrue: [ ^self itemsChanged ].
	
	super handleSystemChange: aSystemAnnouncement