I am a root of hierarchy of filters which use string pattern to filter objects.
Concrete filter function is still responsibility of subclasses.

I only define correct comparison with other filters and suitable constructors:

	StringFilterClass regexPattern: aRegexString.
	StringFilterClass substringPattern: aSubString
	StringFilterClass pattern: aStringPattern
	
Internal Representation and Key Implementation Points.

    Instance Variables
	pattern:		<ClyStringPattern>