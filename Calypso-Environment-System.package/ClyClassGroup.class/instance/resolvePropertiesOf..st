items resolving
resolvePropertiesOf: myEnvironmentItem
	super resolvePropertiesOf: myEnvironmentItem.
		
	"we think any class group have classes".
	myEnvironmentItem markWithChildrenOf: ClyLocalClassScope