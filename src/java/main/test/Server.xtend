package test

import spark.Request
import spark.Response
import spark.Route

import static spark.Spark.*
import static test.Server.*

class Server {

	def static void main(String[] args) {
		get(route("/hello") [ res, res |
			Views::test("Xtend and sparkjava")
		])
	}

	def static Route route(String route, (Request, Response) => Object handler) {
		new MyRouter(route, handler)
	}

}


