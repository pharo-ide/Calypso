instance creation
withString: aString caseSensitive: aBool

	^self filteredBy: (ClySubstringPattern with: aString caseSensitive: aBool)