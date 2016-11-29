{% include 'misc/header.py' %}

"""Test example app."""

import os
import signal
import subprocess
import sys
import time


def setup_module(module):
    """Set up before all tests."""
    # switch to examples/app.py
    exampleappdir = os.path.join(os.path.split(sys.path[0])[0],
                                 'examples')
    os.chdir(exampleappdir)


def teardown_module(module):
    """Tear down after all tests."""
    pass


def test_example_app():
    """Test example app."""
    pass
