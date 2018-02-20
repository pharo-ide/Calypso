I extend items with information about contained tests.

I decorate package, classes and methods with ClyTestResultProperty. Browser plugin uses it to show special icon/button and install test related commands.

Also I provide failed tests group to show all such tests together.

When I am activated on environment I subscribe to test history announcer. And when tests run I ask environment to process results (I wrap SUnit event with my ClyTestCaseRan).