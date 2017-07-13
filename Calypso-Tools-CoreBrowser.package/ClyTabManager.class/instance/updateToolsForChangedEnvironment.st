updating
updateToolsForChangedEnvironment
	| currentState |
	currentState := OrderedCollection new: tools size.
	tools do: [ :each | 
		currentState add: each -> each isManagedByUser.
		each isManagedByUser: true].
	
	self updateTools.
	
	currentState do: [ :each | each key isManagedByUser: each value ]