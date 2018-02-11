I represent any context of particular browser class.

I am used to activate browser commands and tools globally for given kind of browser.  I not depend on any browser selection or queries.

For example you can use me to define that package creation command should exist only for full browser:

		SycAddNewPackageCommand class>>shortcutActivation
			<classAnnotation>
			^CmdShortcutCommandActivation by: $p meta, $n for: ClyFullBrowser.

By default any browser class is converted to my instance. So you do not need create context explicitly in annotations.

Internal Representation and Key Implementation Points.

    Instance Variables
	browserClass:		<ClyBrowser class>