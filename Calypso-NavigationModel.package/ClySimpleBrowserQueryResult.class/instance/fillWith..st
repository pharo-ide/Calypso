building
fillWith: queriedObjects
	"I convert queries objects to browser items lazely when they are demanded.
	So here I just prelocate the array for them"
	items := Array new: queriedObjects size