I represent browser context of any query view which retrieves particular kind of items. 

I am used to activate browser commands and tools in context of any possible query which is supposed return items of expected type. So I am independent from the actual selection and its size.

For example you can use me to define that package creation command should exist for any query view which shows packages:

		SycAddNewPackageCommand class>>shortcutActivation
			<classAnnotation>
			^CmdShortcutCommandActivation by: $p meta, $n for: RPackage asQueryItemTypeContext.

It will activate shortcut for any package view (not only all packages). 
Because queries can retrieve objects of any type I do not provide automatic convertation and you should use explicit message #asQueryItemTypeContext instead of simple class