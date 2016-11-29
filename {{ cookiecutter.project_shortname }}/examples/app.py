{% include 'misc/header.py' %}
"""Minimal Flask application example for development.

Run example development server:

.. code-block:: console

   $ cd examples
   $ export FLASK_APP=app.py
   $ export FLASK_DEBUG=1
   $ flask run
"""

from __future__ import absolute_import, print_function

from flask import Flask
from flask_babelex import Babel

from {{ cookiecutter.package_name }} import {{ cookiecutter.extension_class }}

# Create Flask application
app = Flask(__name__)
Babel(app)
{{ cookiecutter.extension_class }}(app)
