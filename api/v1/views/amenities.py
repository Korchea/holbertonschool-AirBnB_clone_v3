#!/usr/bin/python3
""" A new view for Amenity objects that handles all default
RESTFul API actions"""
from models.amenity import Amenity
from api.v1.views import app_views
from flask import jsonify, request, abort
from models import storage


@app_views.route('/amenities/', methods=['GET'], strict_slashes=False)
def get_all_amenities():
    """ Return all the amenities"""
    amenities = storage.all(Amenity)
    list_amenities = []
    for amenity in amenities:
        list_amenities.append(amenities[amenity].to_dict())
    return jsonify(list_amenities)


@app_views.route('/amenities/<amenity_id>', methods=['GET'],
                 strict_slashes=False)
def get_amenity_by_id(amenity_id):
    """ Return a specific amenity"""
    amenity = storage.get(Amenity, amenity_id)
    if amenity is None:
        abort(404)
    return jsonify(amenity.to_dict())


@app_views.route('/amenities/<amenity_id>', methods=['DELETE'],
                 strict_slashes=False)
def del_amenity(amenity_id):
    """ Delete a specific amenity"""
    amenity = storage.get(Amenity, amenity_id)
    if amenity is None:
        abort(404)
    amenity.delete()
    storage.save()
    return jsonify({}), 200


@app_views.route('/amenities/', methods=['POST'],
                 strict_slashes=False)
def create_amenity():
    """ Create a amenity"""
    new_amenity = request.get_json()
    if not new_amenity:
        abort(400, "Not a JSON")
    if "name" not in new_amenity:
        abort(400, "Missing name")
    amenity = Amenity(**new_amenity)
    storage.new(amenity)
    storage.save()
    return jsonify(amenity.to_dict()), 201


@app_views.route('/amenities/<amenity_id>', methods=['PUT'],
                 strict_slashes=False)
def update_amenity(amenity_id):
    """ Update a amenity"""
    amenity = storage.get(Amenity, amenity_id)
    if amenity is None:
        abort(404)
    body_request = request.get_json()
    if not body_request:
        abort(400, "Not a JSON")
    for key, value in body_request.items():
        if key != 'id' and key != 'created_at' and key != 'updated_at':
            setattr(amenity, key, value)
    storage.save()
    return jsonify(amenity.to_dict()), 200
