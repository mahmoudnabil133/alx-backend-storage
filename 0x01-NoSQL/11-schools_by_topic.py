#!/usr/bin/env python3
"""
return scholl have specific topics
"""
def schools_by_topic(mongo_collection, topic):
    "find topic"
    ret = []
    for doc in mongo_collection.find():
        if topic in doc.get("topics"):
            ret.append(doc)
    return doc
