controlling
updateDirtyState

	| currentLabel |
	self hasUnacceptedEdits == isDirty ifTrue: [ ^self].

	"we want escape getting label from actual model because it simplified things 
	and in remote scenario it will not make any request to server"
	currentLabel := containerTab label morph contents.
	
	isDirty := self hasUnacceptedEdits.
	isDirty 
		ifTrue: [ containerTab label: '*', currentLabel]
		ifFalse: [ 
			(currentLabel beginsWith: '*') ifTrue: [ 
					containerTab label: currentLabel allButFirst ]]