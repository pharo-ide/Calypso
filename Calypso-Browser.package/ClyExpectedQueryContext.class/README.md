I represent browser context of query view which executes particular kind of query.

I am used to activate browser commands and tools in context of concrete query independently from selected items, their type and count.

For example you can use me to define that package creation command should exist for any query view which is based on ClyAllPackages query:

		SycAddNewPackageCommand class>>shortcutActivation
			<classAnnotation>
			^CmdShortcutCommandActivation by: $p meta, $n for: ClyAllPackages.

By default any query class is converted to my instance. So you do not need create context explicitly in annotations

Internal Representation and Key Implementation Points.

    Instance Variables
	queryClass:		<ClyQuery class>