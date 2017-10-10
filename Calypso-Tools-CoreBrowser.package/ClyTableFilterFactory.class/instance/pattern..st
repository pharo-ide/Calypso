filter creation
pattern: aString
	"The method is called from fast table filter function to create new instance of item filter"
	| newPattern |
	newPattern := stringPattern copy.
	newPattern value: aString.
	^itemFilterClass pattern: newPattern 