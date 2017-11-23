running
setUp
	super setUp.
	
	"For tests we want predictable order or collected items to simplify assertions"
	result := SortedCollection sortBlock: #printString ascending