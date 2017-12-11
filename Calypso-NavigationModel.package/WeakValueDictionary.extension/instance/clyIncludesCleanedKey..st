*Calypso-NavigationModel
clyIncludesCleanedKey: key
	"Answer whether the receiver has a key which value was collected as garbage"
	
	^ (array at: (self scanFor: key)) value == nil