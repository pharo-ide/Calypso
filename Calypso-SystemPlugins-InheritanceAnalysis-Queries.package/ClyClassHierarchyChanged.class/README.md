I am a root of special kind of ClassAnnouncement which subclasses are triggered by ClyInheritanceAnalysisEnvironmentPlugin to invalidate related method queries.

Plugin decorates methods with overriding and overridden status. And to update this information in arbitrary method queries plugin triggers special kind of events which override default event processing logic.

For example Object methods status should be updated when you remove some subclass which overrides his method.
And otherwise when you change superclass of another class. Subclasses of another class should update their methods status because they could override methods from original removed deep superclass.