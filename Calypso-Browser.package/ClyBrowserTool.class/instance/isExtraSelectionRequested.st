testing
isExtraSelectionRequested
	"It should be #meta key pressed. But we don't have it"
	
	^Sensor commandKeyPressed or: [ Sensor controlKeyPressed ]