{% include 'misc/header.py' %}

"""Minimal Flask application example for development.

Run example development server:

.. code-block:: console

   $ cd examples
   $ python app.py
"""

from __future__ import absolute_import, print_function

from flask import Flask
from flask_babelex import Babel

from {{ cookiecutter.package_name }} import {{ cookiecutter.extension_class }}

# Create Flask application
app = Flask(__name__)
Babel(app)
{{ cookiecutter.extension_class }}(app)

if __name__ == "__main__":
    app.run()
