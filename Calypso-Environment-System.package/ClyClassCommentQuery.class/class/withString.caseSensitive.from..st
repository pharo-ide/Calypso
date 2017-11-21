instance creation
withString: aString caseSensitive: aBool from: aScope

	^self 
		using: (ClySubstringPattern with: aString caseSensitive: aBool)
		from: aScope 