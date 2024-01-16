#!/usr/bin/python3
"""
 function that queries the Reddit API and returns the number of subscribers
"""
import requests

def number_of_subscribers(subreddit):
    url = "https://www.reddit.com/r/redditdev/about.json"
    response = requests.get(url, allow_redirects=False)
    if response.status_code == 200:
        return response.json()["data"]["subscribers"]
    elif response.status_code == 302:
        print("Subreddit not found.")
    else:
        print("Unexpected status code: " + response.status_code)
    return 0
