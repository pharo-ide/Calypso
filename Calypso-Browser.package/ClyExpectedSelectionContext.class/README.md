I represent browser context of concrete type of selected items.
I am never active when there is empty selection.

For example users can  annotate commands in context of ClyMethod. And they will be available in all browsers and all views which shows methods:

	ClyRenameMessageCommand class>>shortcutActivation
		^CmdShortcutCommandActivation by: $r meta for: ClyMethod asCalypsoItemContext
		
Because items can belongs to any class I do not provide automatic convertation and you should use explicit message #asCalypsoItemContext instead of simple class