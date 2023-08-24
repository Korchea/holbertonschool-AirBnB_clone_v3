#!/usr/bin/python3
""" A new view for Place objects that handles all default
RESTFul API actions """
from api.v1.views import app_views
from flask import jsonify, request, abort
from models.city import City
from models.place import Place
from models.user import User
from models import storage


@app_views.route('/cities/<city_id>/places', methods=['GET'],
                 strict_slashes=False)
def get_place_by_city(city_id):
    """
        Returns Places in a City
    """
    city = storage.get(City, city_id)
    if city is None:
        abort(404)
    list_of_places = []
    for places in city.places:
        list_of_places.append(places.to_dict())
    return jsonify(list_of_places), 200


@app_views.route('/places/<place_id>', methods=['GET'], strict_slashes=False)
def get_place_id(place_id):
    """
        Returns the place with the specified id
    """
    place = storage.get(Place, place_id)
    if place is None:
        abort(404)
    return jsonify(place.to_dict()), 200


@app_views.route('/places/<place_id>', methods=['DELETE'],
                 strict_slashes=False)
def delete_place(place_id):
    """
        Deletes a place obj given its id
    """
    place = storage.get(Place, place_id)
    if place is None:
        abort(404)
    place.delete()
    storage.save()
    return jsonify({}), 200


@app_views.route('/cities/<city_id>/places', methods=['POST'],
                 strict_slashes=False)
def create_place(city_id):
    """ create new place obj """
    city = storage.get(City, city_id)
    if city is None:
        abort(404)
    obj_data = request.get_json()
    if not obj_data:
        abort(400, "Not a JSON")
    if "user_id" not in obj_data:
        abort(400, "Missing user_id")
    user_id = obj_data['user_id']
    if not storage.get(User, user_id):
        abort(404)
    if "name" not in obj_data:
        abort(400, "Missing name")
    obj = Place(**obj_data)
    setattr(obj, 'city_id', city_id)
    storage.new(obj)
    storage.save()
    return jsonify(obj.to_dict()), 201


@app_views.route('/places/<place_id>', methods=['PUT'], strict_slashes=False)
def update_place(place_id):
    """
        update existing place object
    """
    obj = storage.get(Place, place_id)
    if obj is None:
        abort(404)
    body_request = request.get_json()
    if not body_request:
        abort(400, "Not a JSON")
    for key, value in body_request.items():
        if key != 'id' and key != 'user_id':
            if key != 'created_at' and key != 'updated_at':
                setattr(obj, key, value)
    storage.save()
    return jsonify(obj.to_dict()), 200
