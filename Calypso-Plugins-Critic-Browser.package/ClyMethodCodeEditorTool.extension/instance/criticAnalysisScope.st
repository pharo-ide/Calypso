*Calypso-Plugins-Critic-Browser
criticAnalysisScope
	"it is important to use identity set as container for methods
	because methods define equality in very specific way
	where two methods with different selector can be equal"
	^ClyMethodScope basis: (IdentitySet with: editingMethod)