import requests


def test():
    assert requests.get("http://app:5000").status_code == 200
