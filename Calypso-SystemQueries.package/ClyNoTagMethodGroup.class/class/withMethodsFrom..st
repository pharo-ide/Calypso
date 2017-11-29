instance creation
withMethodsFrom: aClassScope

	^self named: self groupName on: (ClyUntaggedMethods from: aClassScope)