tests
testIsEmptyFromEmptyMethodScope
	"This query only supports class, package and global scopes
	because it analyses classes and only then methods"
	<expectedFailure>
	super testIsEmptyFromEmptyMethodScope