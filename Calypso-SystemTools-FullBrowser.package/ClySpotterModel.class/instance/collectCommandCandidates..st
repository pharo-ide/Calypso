private
collectCommandCandidates: aSelector
	| commands context |
	
	context := (browser perform: aSelector) createSelectionContext.
	commands := OrderedCollection new.
	commands addAll: (CmdContextMenuCommandActivation activeInstancesInContext: context).
	^ commands collect: [ :each | each newActivatorFor: context ]