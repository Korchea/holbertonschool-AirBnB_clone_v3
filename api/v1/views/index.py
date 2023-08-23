#!/usr/bin/python3
""" Returns a JSON: 'status: OK'"""
from api.v1.views import app_views
from flask import jsonify
from models import storage


@app_views.route('/status')
def get_status():
    """ Returns a JSON: 'status: OK"""
    return jsonify(status="OK")


@app_views.route('/stats')
def get_stats():
    """ Retrieves the number of each objects by type."""
    return jsonify(amenities=storage.count("Amenity"),
                   cities=storage.count("City"),
                   places=storage.count("Place"),
                   reviews=storage.count("Rewiew"),
                   states=storage.count("State"),
                   users=storage.count("User"))
