package test

import static spark.Spark.*;
import spark.*;

class Server {

	def static void main(String[] args) {
		get(route("/hello") [ res, res |
			Views.test("Xtend and sparkjava")
		])
	}

	def static Route route(String route, (Request, Response) => Object handler) {
		new MyRouter(route, handler)
	}

}


