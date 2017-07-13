updating
publishCollectedChanges
	changes keysAndValuesDo: [ :content :changeEvent |
		content notifyChange: changeEvent ].
	changes removeAll