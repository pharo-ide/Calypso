testing
isExtraSelectionRequested
	"It checks that users wants multiple selected tabs.
	So cmd click on table just adds new selected items and keep existed selected.
	And this method allow tab manager to keep current tool selected in that case.
	In addition tab manager will force all similar tools (of same class) to be selected.
	So cmd+click on method pane leads to multiple methods selected in the table and in the tabs"
	
	"Normally it should be #meta key pressed. But we don't have it"
	^Sensor commandKeyPressed or: [ Sensor controlKeyPressed ]