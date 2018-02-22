I am a special query which is based on constant list of methods or class comments. 

I am introduced to support old (current) approach for system queries which is based on SystemNavigation collecting list of methods.

I am used by ClyOldMessageBrowserAdapter which is installed as default as part of Calypso toolset.

I implement semantics of old MessageBrowser.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	criteriaBlock:		<BlockClosure>
	criteriaString:		<String>
	extraMethods:		<Collection of<CompiledMethod>>