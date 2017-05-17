======================================
Cookiecutter - Invenio Module Template
======================================

.. image:: https://img.shields.io/travis/inveniosoftware/cookiecutter-invenio-module.svg
        :target: https://travis-ci.org/inveniosoftware/cookiecutter-invenio-module

.. image:: https://img.shields.io/github/tag/inveniosoftware/cookiecutter-invenio-module.svg
        :target: https://github.com/inveniosoftware/cookiecutter-invenio-module/releases

.. image:: https://img.shields.io/github/license/inveniosoftware/cookiecutter-invenio-module.svg
        :target: https://github.com/inveniosoftware/cookiecutter-invenio-module/blob/master/LICENSE

This `Cookiecutter <https://github.com/audreyr/cookiecutter>`_ template is
designed to help you to bootstrap modules for `Invenio
<https://github.com/inveniosoftware/invenio>`_. It offers you the following
features:

- **Python package:** Python package for your module including `version`
  submodule.
- **Boilderplate files:** `README` including important badges, `AUTHORS` and
  `CHANGES` file.
- **License:** `GPL 2 <https://www.gnu.org/licenses/gpl-2.0.html>`_ file and
  headers. Headers optionally include a special paragraph for
  Intergovernmental Organizations like CERN. Provides these headers as
  reusable files for Python and reStructuredText.
- **Installation:** Installation script written as `setup.py` and a
  requirements calculator for different levels (`min`, `pypi`, `dev`).
- **Tests:** Test setup using `pytest <http://pytest.org/latest/>`_ and
  configuration for `Tox <https://tox.readthedocs.io/en/latest/>`_.
- **Documentation:** Documentation generator using `Sphinx
  <http://sphinx-doc.org/>`_. Also includes all files required for `Read the
  Docs <https://readthedocs.io/>`_. Mocking module to simulate not-installed
  requirements for faster documentation building.
- **Continuous integration:** Support for `Travis <https://travis-ci.org/>`_
  which tests all three requirement levels and adds coverage tests using
  `Coveralls <https://coveralls.io/>`_.
- **Your toolchain:** Ignores a decent set of files when working with GIT and
  `Docker <https://www.docker.com/>`_. Gets your editor to adapt project
  guidelines by providing a `EditorConfig <http://editorconfig.org/>`_ file.

Configuration
-------------
To generate correct files, please provide the following input to Cookiecutter:

================================ =============================================
`project_name`                   Full project name, might contain spaces.
`project_shortname`              Project shortname, no spaces allowed, use `-`
                                 as a separator.
`package_name`                   Package/Module name for Python, must follow
                                 `PEP 0008 <https://www.python.org/dev/peps/
                                 pep-0008/>`_.
`github_repo`                    GitHub repository of the project in form of
                                 `USER/REPO`, not the full GitHub URL.
`description`                    A short description of the functionality of
                                 the module, its length should not extend one
                                 line.
`author_name`                    The name of the primary author of the
                                 project, not necessarily the same as the
                                 copyright holder.
`author_email`                   E-Mail address of the primary author.
`year`                           Current year.
`copyright_holder`               Name of the person or organization who acts
                                 as the copyright holder of this project.
`copyright_by_intergovernmental` Boolean flag that indicates that the
                                 copyright holder is an Intergovernmental
                                 Organization.
`superproject`                   Project that contains the newly created
                                 Invenio module, or, in other words, the
                                 super project of this module, e.g. Invenio
                                 itself.
`transifex_project`              Name of the project on transifex translation
                                 platform.
`extension_class`                Name of the class that will be exported as
                                 setuptools entrypoint and loaded by invenio
                                 main app.
`config_prefix`                  Prefix for the configuration keys that the
                                 main app will use for this extension.
================================ =============================================

Usage example
-------------
This example might be deprecated at the time you read it, but it will give you
a good idea on how to use this template to generate a new project.

Requirements
============
You will need to have installed the Cookiecutter tool, we recommend to use a
virtualenv, specially with virtualenvwrapper to help you around. So assuming
that you have virtualenvwrapper already installed (remember to add `source
virtualenvwrapper.sh` to your bashrc and reload the console or source it
directly after installing it), you can just run::

    $ mkvirtualenv cookiecutter
    $ pip install --upgrad pip setuptools  # to make sure we have the latest
    $ pip install cookiecutter

And that will create and setup the virtualenv we will use for the new project
creation.


Create the new python module
============================
Creating the new module is as easy as running::

    $ cookiecutter gh:inveniosoftware/cookiecutter-invenio-module

That will start asking you a lot of questions about the module you want to
create, you can see what each of them mean in the _`Configuration` section.

Start developing
================
So now you can start developing your new module, that would have been created
at `$PWD/nameofyourproject` where `nameofyourproject` is the name of the
`package_name` that you specified previously.

Enjoy!
