#!/usr/bin/env python3
"""
list all documents in a collection
"""


def list_all(mongo_collection):
    "list all"
    if not mongo_collection:
        return []
    coll_list = []
    for doc in mongo_collection.find():
        coll_list.append(doc)
    return doc

