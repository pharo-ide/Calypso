instance creation
withMethodsFrom: aClassScope

	^self named: self groupName on: (ClyUnclassifiedMethods from: aClassScope)