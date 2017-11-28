activation-context menu
fillContextMenu: aMenu using: aCommandActivator
	| concreteScopeCommand switchActivator |
	
	browser allNavigationScopes do: [ :newScope |
		concreteScopeCommand := self class toScope: newScope in: browser.
		switchActivator := aCommandActivator newForCommand: concreteScopeCommand.
		aMenu 	add: switchActivator menuItemName target: switchActivator selector: #executeCommand]