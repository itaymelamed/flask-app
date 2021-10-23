import requests


def test_app():
    assert requests.get("http://app1:5000").status_code == 200
