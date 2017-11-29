instance creation
withString: aString caseSensitive: aBool

	^self using: (ClySubstringPattern with: aString caseSensitive: aBool)