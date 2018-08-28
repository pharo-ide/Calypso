accessing
removePlugin: aBrowserPlugin

	plugins removeAllSuchThat: [ :each | each class = aBrowserPlugin class ]