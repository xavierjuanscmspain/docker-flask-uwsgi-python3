

def application(env, response):
    response('200 OK', [('Content-Type', 'application/json')])
    return ["Hello World! :)"]
