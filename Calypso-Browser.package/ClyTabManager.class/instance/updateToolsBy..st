private
updateToolsBy: aBlock
	updatingStarted := true.
	aBlock ensure: [ updatingStarted := false]