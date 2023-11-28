import os, logging
import httpx
from httpx import Response

# Get the configuration details.
inside_container = os.environ.get("DOCKER_CONTAINER") == "1"

# Configure the logger.
logging.basicConfig(level=logging.INFO)

def ping() -> Response:
    """
    Send synchronous request to a test endpoint and return the response object.
    
    Returns:
    Response
    """
    r = httpx.get('https://www.httpbin.org/')
    return r
    
# Conditionally execute code if this is run as the main module.
if __name__ == '__main__':
    logging.info(f"This is the entrypoint for the Python application.")
    logging.info(f"Is this running inside a docker container? {inside_container}")
    ping()