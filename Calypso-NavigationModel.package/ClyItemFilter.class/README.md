I am a root of hierarchy of filters.

My subclasses must implement method #matches: to check if given environment item satisfies specific condition.

My instances are used by ClyEnvironmentFilterQuery which is cached by environment scopes. To support proper caching my subclassses must define corrent comparison methods: equality and hash