import HTTPServer
import Router

let router = Router { route in
    route.get("/") { _ in
        return Response(body: "hello world")
    }
}

try Server(responder: router).start()
