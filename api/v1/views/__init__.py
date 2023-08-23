#!/usr/bin/python3
"""Something to do later"""
from api.v1.views.index import get_status
from flask import Blueprint

app_views = Blueprint('app_views', __name__, url_prefix="/api/v1")
