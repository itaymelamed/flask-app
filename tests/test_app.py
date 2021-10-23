import requests
import mysql.connector
import os


def test_app1():
    assert "TEST" in requests.get("http://app1:5000").text
    assert requests.get("http://app1:5000").status_code == 200


def test_app2():
    assert requests.get("http://app2:5000").status_code == 200


def test_db():
    cnx = mysql.connector.connect(user='root', password='root',
                                  host='MySQL',
                                  database='content_enrichment_development')
    assert cnx.is_connected()
