+++
title = "CORS Cross-Origin Resource Sharing"
author = "Lorenzo Drumond"
date = "2024-08-27T11:52:47"
tags = ["computer_science",  "programming",  "CORS",  "cross_origin_resource_sharing",  "web",  "http"]
+++



Cross-Origin Resource Sharing (CORS) is an HTTP-header based mechanism that allows a server to indicate any origins (domain, scheme, or port) other than its own from which a browser should permit loading resources. CORS also relies on a mechanism by which browsers make a "preflight" request to the server hosting the cross-origin resource, in order to check that the server will permit the actual request. In that preflight, the browser sends headers that indicate the HTTP method and headers that will be used in the actual request.

For security reasons, browsers restrict cross-origin HTTP requests initiated from scripts. For example, fetch() and XMLHttpRequest follow the same-origin policy. This means that a web application using those APIs can only request resources from the same origin the application was loaded from unless the response from other origins includes the right CORS headers.

# Problem

The key problem is how implicit credentials are handled in the web. In the past browsers made the disastrous decision that these credentials could be included in cross-origin requests. This opened up the following attack vector.

1. Log in to https://your-bank.example.
2. Visit https://fun-games.example.
3. https://fun-games.example runs fetch("https://your-bank.example/profile") to read sensitive information about you like your address and current balance.

This worked because when you logged into your bank it issued you a cookie to access your account details. While fun-games.example can’t just steal that cookie, it could make its own requests to your bank’s API and your browser would helpfully attach the cookie to authenticate you.

This is where CORS comes in. It describes a policy for how cross-origin requests can be made and used. It is both incredibly flexible and completely insufficient.

The default policy allows making requests, but you can’t read the results. So fun-games.example is blocked from reading your address from https://your-bank.example/profile. It can also use side channels such as latency and if the request succeeded or failed to learn things.

But despite being incredibly annoying this doesn’t actually solve the problem! While fun-games.example can’t read the result, the request is still sent. This means that it can execute POST https://your-bank.example/transfer?to=fungames&amount=1000000000 to transfer one billion dollars to their account.

Every single site that uses cookies needs to explicitly handle it to avoid this type of attack.

The key defence against these cross-site attacks is ensuring that implicit credentials are not inappropriately used. It is best to start by ignoring all implicit credentials on cross-site requests, then you can add specific exceptions as required.

# Solution

The best solution is to set up server-wide middleware that ignores implicit credentials on all cross-origin requests. This example strips cookies, if you use HTTP Authentication or TLS client certificates be sure to ignore those too. Thankfully the Sec-Fetch-* headers are now available on all modern browsers. This makes cross-site requests easy to identify.

```python
def no_cross_origin_cookies(req):
	if req.headers["sec-fetch-site"] == "same-origin":
		# Same origin, OK
		return

	if req.headers["sec-fetch-mode"] == "navigate" and req.method == "GET":
		# GET requests shouldn't mutate state so this is safe.
		return

	req.headers.delete("cookie")
```

# References

- https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
- https://kevincox.ca/2024/08/24/cors/
