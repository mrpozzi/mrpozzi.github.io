# -*- coding: utf-8 -*-
 
import os
 
REPO = "mrpozzi.github.io"  # Used for FREEZER_BASE_URL
DEBUG = True
 
# Assumes the app is located in the same directory
# where this file resides
APP_PATH = os.path.dirname(os.path.abspath(__file__))
 
def parent_fold(path):
    '''Returns the parent folder.'''
    return os.path.abspath(os.path.join(path, os.pardir))
 
ROOT = parent_fold(APP_PATH)
# In order to deploy to Github pages, you must build the static files to
# the project root
FREEZER_DESTINATION = PROJECT_ROOT
# Since this is a repo page (not a Github user page),
# we need to set the BASE_URL to the correct url as per GH Pages' standards
FREEZER_BASE_URL = "http://localhost/{0}".format(REPO_NAME)
FREEZER_REMOVE_EXTRA_FILES = False  # IMPORTANT: If this is True, all app files
                                    # will be deleted when you run the freezer
FLATPAGES_MARKDOWN_EXTENSIONS = ['codehilite']
FLATPAGES_ROOT = os.path.join(APP_DIR, 'pages')
FLATPAGES_EXTENSION = '.md'
