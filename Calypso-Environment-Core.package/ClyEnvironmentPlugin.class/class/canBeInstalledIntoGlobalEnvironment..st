testing
canBeInstalledIntoGlobalEnvironment: aNavigationEnvironment
	"My subclasses should define the sub hierarchy of domain enviroment plugins. 
	And if this domain defines global environment instance 
	then here the root of sub hierarchy can define auto activation of plugins on this global instance.
	It will check that given environment is the global domain environment.
	By default it is false which means that any new plugin will be never auto activated 
	despite on enabled auto activation"
	
	^false