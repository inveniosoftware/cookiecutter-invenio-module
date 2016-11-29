{% include 'misc/header.py' %}
"""Minimal Flask application example for development.

Run example development server:

.. code-block:: console

   $ cd examples
   $ ./app-setup.sh
   $ ./app-fixtures.sh
   $ FLASK_APP=app.py flask run
   $ ./app-teardown.sh
"""

from __future__ import absolute_import, print_function

from flask import Flask
from flask_babelex import Babel

from {{ cookiecutter.package_name }} import {{ cookiecutter.extension_class }}

# Create Flask application
app = Flask(__name__)
Babel(app)
{{ cookiecutter.extension_class }}(app)
