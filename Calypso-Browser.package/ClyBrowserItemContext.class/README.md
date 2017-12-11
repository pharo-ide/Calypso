I represent any browser context of the selected items which belongs to the given environment scope class.

I was introduced to activate browser commands and tools in the context of concrete type of selected items. It avoids duplication of annotaions for every browser type. So you can annotated command in context of ClyMethodScope. And it will be available in all browser which shows methods.

You can use the scope class directly as context in browser annotations:
	ClyRenameMessageCommand class>>shortcutActivation
		^CmdShortcutCommandActivation by: $r meta for: ClyMethodScope

Internal Representation and Key Implementation Points.

    Instance Variables
	scopeClass:		<ClyEnvironmentScope class>