I am a root of hierarchy of scope classes which represent a global point of view on concrete system.

My subclasses define what is the concrete system and implement #fetchContent: method accordingly with single system instance instead of multiple basis objects.
To access system instance subclasses use message #system:
	systemScope system