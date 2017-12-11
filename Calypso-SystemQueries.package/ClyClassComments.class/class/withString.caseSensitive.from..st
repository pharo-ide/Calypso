instance creation
withString: aString caseSensitive: aBool from: aScope

	^self 
		filteredBy: (ClySubstringPattern with: aString caseSensitive: aBool)
		from: aScope 