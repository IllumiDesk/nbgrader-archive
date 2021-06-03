"""
A system for assigning and grading notebooks.
"""

import os
import sys
from ._version import version_info, __version__


def _jupyter_nbextension_paths():
    paths = [
        dict(
            section="notebook",
            src=os.path.join('nbextensions', 'create_assignment'),
            dest="create_assignment",
            require="create_assignment/main"
        ),
        dict(
            section="tree",
            src=os.path.join('nbextensions', 'formgrader'),
            dest="formgrader",
            require="formgrader/main"
        ),
        dict(
            section="notebook",
            src=os.path.join('nbextensions', 'validate_assignment'),
            dest="validate_assignment",
            require="validate_assignment/main"
        ),
    ]

    if sys.platform != 'win32':
        paths.append(
            dict(
                section="tree",
                src=os.path.join('nbextensions', 'assignment_list'),
                dest="assignment_list",
                require="assignment_list/main"
            )
        )
        paths.append(
            dict(
                section="tree",
                src=os.path.join('nbextensions', 'course_list'),
                dest="course_list",
                require="course_list/main"
            )
        )

    return paths


def _jupyter_server_extension_paths():
    paths = [
        dict(module="nbgrader.server_extensions.formgrader"),
        dict(module="nbgrader.server_extensions.validate_assignment"),
        dict(module="nbgrader.server_extensions.background_processor"),
    ]

    if sys.platform != 'win32':
        paths.append(dict(module="nbgrader.server_extensions.assignment_list"))
        paths.append(dict(module="nbgrader.server_extensions.course_list"))

    return paths
