#!/usr/bin/python3
"""Something to do later"""
from flask import Blueprint
import api.v1.views.index

app_views = Blueprint('app_views', __name__, url_prefix="/api/v1")
