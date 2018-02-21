I am a root of commands which are supposed to switch browser mode.
My instances are represented in browser toolbar as radio buttons which state reflects the "applied status" of the command.
So subclasses should implement the method #isAppliedToBrowser.

The radio button is wraped by ClyBrowserModeSwitch widget.

Also I force browser toolbar update after execution