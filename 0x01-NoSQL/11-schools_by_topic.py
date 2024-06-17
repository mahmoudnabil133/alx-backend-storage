#!/usr/bin/env python3
"""
return scholl have specific topics
"""
def schools_by_topic(mongo_collection, topic):
    "find toopics"
    return mongo_collection.find({topic: topic})
