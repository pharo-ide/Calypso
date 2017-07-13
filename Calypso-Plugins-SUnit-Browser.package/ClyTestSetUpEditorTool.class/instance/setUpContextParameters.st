initialization
setUpContextParameters
	| testClass |

	testClass := context lastSelectedClass.
	editingMethod := testClass lookupSelector: #setUp