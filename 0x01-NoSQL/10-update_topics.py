#!/usr/bin/env python3
"""
update documents in a collection
"""


def update_topics(mongo_collection, name, topics):
    "update doc"
    mongo_collection.update_one({name: name}, {$set: {"topics": topics}})
