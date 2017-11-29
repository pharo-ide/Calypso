I am a root strategy which subclasses defines how environment should be updated due to accepted change events.

Subclasses should implement two methods:
- content:  anEnvironmentContent wasChangedBy: anAnnouncement
here subclasses should define what to do with given change
- publishCollectedChanges
here subclasses can publish  changes alltogether when their logic is to collect events instead of instant announcing them