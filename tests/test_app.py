import requests


def test_app1():
    assert requests.get("http://app1:5000").status_code == 200


def test_app2():
    assert requests.get("http://app2:5000").status_code == 200
