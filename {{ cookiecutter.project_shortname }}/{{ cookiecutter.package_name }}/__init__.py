{% include 'misc/header.py' %}
"""{{ cookiecutter.description }}."""

from .ext import {{ cookiecutter.extension_class }}

__version__ = "0.1.0"

__all__ = ("__version__", "{{ cookiecutter.extension_class }}")
