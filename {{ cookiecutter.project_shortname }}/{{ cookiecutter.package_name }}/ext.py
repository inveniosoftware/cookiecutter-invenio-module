{% include 'misc/header.py' %}
"""{{ cookiecutter.description }}"""

from __future__ import absolute_import, print_function

from flask_babelex import gettext as _

from .views import blueprint


class {{ cookiecutter.extension_class }}(object):
    """{{ cookiecutter.project_name}} extension."""

    def __init__(self, app=None):
        """Extension initialization."""
        _('A translation string')
        if app:
            self.init_app(app)

    def init_app(self, app):
        """Flask application initialization."""
        self.init_config(app)
        app.register_blueprint(blueprint)
        app.extensions['{{ cookiecutter.project_shortname}}'] = self

    def init_config(self, app):
        """Initialize configuration."""
        app.config.setdefault(
            "{{ cookiecutter.config_prefix}}_BASE_TEMPLATE",
            app.config.get("BASE_TEMPLATE",
                           "{{ cookiecutter.package_name}}/base.html"))
