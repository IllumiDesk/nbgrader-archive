"""Tornado handlers for nbgrader background service."""

from .scheduler import scheduler


def load_jupyter_server_extension(nbapp):
    """Start background processor"""
    nbapp.log.info("Starting background processor for nbgrader serverextension")
    scheduler.start()
