items resolving
countClassGroupsIn: aPackage
	"It should ask environment about it because this information is fetched from all plugins.
	But for now there is not environment inside plugin"
	| providers items |
	providers := self collectClassGroupProvidersFor: aPackage.
	
	items := OrderedCollection new.
	
	providers do: [ :each | each buildGroupItemsOn: items].
	
	^items size