import requests


def test_app():
    assert requests.get("http://app1:5000").status_code == 200


def test_app():
    assert requests.get("http://app2:5000").status_code == 200
