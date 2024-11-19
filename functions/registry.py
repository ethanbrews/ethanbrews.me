async def on_request(request):
    """
    Handle requests for /registry and /registry.html by redirecting to another URL.
    """
    path = request.url.path

    if path in ["/registry", "/registry.html"]:
        return {
            "status": 301,
            "headers": {
                "Location": "https://www.myregistry.com/giftlist/ethan-and-tiffany"  # Replace with your target URL
            }
        }

    # Optional: Return a 404 for other paths not matched
    return {
        "status": 404,
        "body": "Not Found"
    }

