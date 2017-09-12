testing
isNavigationPanelFocused

	^navigationViews anySatisfy: [ :each | each hasKeyboardFocus ] 