accessing
scopeNames

	^self scopes collect: [ :each | each description capitalized]