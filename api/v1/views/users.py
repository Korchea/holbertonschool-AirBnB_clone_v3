#!/usr/bin/python3
""" A new view for User objects that handles all default
RESTFul API actions"""
from models.user import User
from api.v1.views import app_views
from flask import jsonify, request, abort
from models import storage


@app_views.route('/users/', methods=['GET'], strict_slashes=False)
def get_all_users():
    """ Return all the users"""
    users = storage.all(User)
    list_users = []
    for user in users:
        list_users.append(users[user].to_dict())
    return jsonify(list_users)


@app_views.route('/users/<user_id>', methods=['GET'],
                 strict_slashes=False)
def get_user_by_id(user_id):
    """ Return a specific user"""
    user = storage.get(User, user_id)
    if user is None:
        abort(404)
    return jsonify(user.to_dict())


@app_views.route('/users/<user_id>', methods=['DELETE'],
                 strict_slashes=False)
def del_user(user_id):
    """ Delete a specific user"""
    user = storage.get(User, user_id)
    if user is None:
        abort(404)
    user.delete()
    storage.save()
    return jsonify({}), 200


@app_views.route('/users/', methods=['POST'],
                 strict_slashes=False)
def create_user():
    """ Create a user"""
    new_user = request.get_json()
    if not new_user:
        abort(400, "Not a JSON")
    if "email" not in new_user:
        abort(400, "Missing email")
    if "password" not in new_user:
        abort(400, "Missing password")
    user = User(**new_user)
    storage.new(user)
    storage.save()
    return jsonify(user.to_dict()), 201


@app_views.route('/users/<user_id>', methods=['PUT'],
                 strict_slashes=False)
def update_user(user_id):
    """ Update a user"""
    user = storage.get(User, user_id)
    if user is None:
        abort(404)
    body_request = request.get_json()
    if not body_request:
        abort(400, "Not a JSON")
    for key, value in body_request.items():
        if key != 'id' and key != 'email' and \
            key != 'created_at' and key != 'updated_at':
            setattr(user, key, value)
    storage.save()
    return jsonify(user.to_dict()), 200
