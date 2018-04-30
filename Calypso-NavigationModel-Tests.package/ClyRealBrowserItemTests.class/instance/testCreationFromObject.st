tests
testCreationFromObject

	| object |
	object := Object new.
	
	item := object asCalypsoBrowserItem.
	
	self assert: item class equals: ClyRealBrowserItem.
	self assert: item actualObject == object.
	self assert: item name equals: object displayString.
	self assert: item type equals: object calypsoEnvironmentType.