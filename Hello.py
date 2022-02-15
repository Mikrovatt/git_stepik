def app(environ, start_response):
        temp = [i + '\n' for i in environ['QUERY_STRING'].split('&')]
        data = bytes(''.join(temp),'ascii')
        start_response("200 OK", [
            ("Content-Type", "text/plain"),
            ("Content-Length", str(len(data)))
        ])
        return iter([data])