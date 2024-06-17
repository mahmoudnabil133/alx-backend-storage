#!/usr/bin/env python3
"""
insert new  document in a collection
"""


def insert_school(mongo_collection, **kwargs):
    "insert doc"
    res = mongo_collection.insert_one(kwargs)
    return res.inserted_id
