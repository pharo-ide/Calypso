system changes
handleSystemChange: aSystemAnnouncement

	| busyResults busySize success anyResult |
	busyResults := 	(queryCache values select: [ :each | each notNil ]) as: IdentitySet.
	busySize := 0.
	[[busySize = busyResults size] whileFalse: [
		busySize := busyResults size.  
		busyResults asArray do: [ :eachResult |
			success := eachResult tryHandleSystemChange: aSystemAnnouncement.
			success ifTrue: [ busyResults remove: eachResult ] ]].
	busyResults notEmpty] whileTrue: [ 
		anyResult := busyResults anyOne.
		anyResult handleSystemChange: aSystemAnnouncement.
		busyResults remove: anyResult]