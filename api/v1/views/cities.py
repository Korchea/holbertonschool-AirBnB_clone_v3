#!/usr/bin/python3
""" A new view for City objects that handles all default
RESTFul API actions """
from api.v1.views import app_views
from flask import jsonify, request, abort
from models.city import City
from models.state import State
from models import storage


@app_views.route('/states/<state_id>/cities', methods=['GET'],
                 strict_slashes=False)
def get_city_by_state(state_id):
    """
        Returns Cities in a State
    """
    state = storage.get(State, state_id)
    """State was a str it needs to be a class"""
    if state is None:
        abort(404)
    list_of_cities = []
    for city in state.cities:
        list_of_cities.append(city.to_dict())
    return jsonify(list_of_cities), 200


@app_views.route('/cities/<city_id>', methods=['GET'], strict_slashes=False)
def get_city_id(city_id):
    """
        Returns the city with the specified id
    """
    city = storage.get(City, city_id)
    if city is None:
        abort(404)
    return jsonify(city.to_dict()), 200


@app_views.route('/cities/<city_id>', methods=['DELETE'], strict_slashes=False)
def delete_city(city_id):
    """
        Deletes a city obj given its id
    """
    city = storage.get(City, city_id)
    if city is None:
        abort(404)
    city.delete()
    storage.save()
    return jsonify({}), 200


@app_views.route('/states/<state_id>/cities', methods=['POST'],
                 strict_slashes=False)
def create_city(state_id):
    """ create new city obj """
    obj_data = request.get_json()
    if not obj_data:
        abort(400, "Not a JSON")
    if "name" not in obj_data:
        abort(400, "Missing name")
    state = storage.get(State, state_id)
    """State was a str it needs to be a class"""
    if state is None:
        abort(404)
    obj_data['state_id'] = state.id
    obj = City(**obj_data)
    storage.new(obj)
    storage.save()
    return jsonify(obj.to_dict()), 201
"""I move some things to have less lines and short lines"""


@app_views.route('/cities/<city_id>', methods=['PUT'], strict_slashes=False)
def update_city(city_id):
    """
        update existing city object
    """
    obj = storage.get(City, city_id)
    if obj is None:
        abort(404)
    body_request = request.get_json()
    if not body_request:
        abort(400, "Not a JSON")
    for key, value in body_request.items():
        if key != 'id' and key != 'created_at' and key != 'updated_at':
            setattr(obj, key, value)
    storage.save()
    return jsonify(obj.to_dict()), 200
