#!/usr/bin/python3
""" A new view for State objects that handles all default
RESTFul API actions"""
from models.state import State
from api.v1.views import app_views
from flask import jsonify, request, abort
from models import storage


@app_views.route('/states/', methods=['GET'])
def get_all_states():
    states = storage.all(State)
    list_states = []
    for state in states:
        list_states.append(states[state].to_dict())
    return jsonify(list_states)


@app_views.route('/states/<state_id>', methods=['GET'])
def get_state_by_id(state_id):
    state = storage.get(State, state_id)
    if state is None:
        abort(404)
    return jsonify(state.to_dict())


@app_views.route('/states/<state_id>', methods=['DELETE'])
def del_state(state_id):
    state = storage.get(State, state_id)
    if state is None:
        abort(404)
    state.delete()
    storage.save()
    return jsonify({}), 200


@app_views.route('/states/', methods=['POST'])
def create_state():
    """"""
    new_state = request.get_json()
    if not new_state:
        abort(400, "Not a JSON")
    if "name" not in new_state:
        abort(400, "Missing name")
    state = State(**new_state)
    storage.new(state)
    storage.save()
    return jsonify(state.to_dict()), 201


@app_views.route('/states/<state_id>', methods=['PUT'])
def update_state(state_id):
    state = storage.get(State, state_id)
    if state is None:
        abort(404)
    body_request = request.get_json()
    if not body_request:
        abort(400, "Not a JSON")
    for key, value in body_request:
        if key != 'id' and key != 'created_at' and key != 'updated_at':
            setattr(state, key, value)
    return jsonify(state.to_dict())
