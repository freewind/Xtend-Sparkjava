package test

import spark.Request
import spark.Response
import spark.Route

class MyRouter extends Route {
	String route
	(Request, Response) => Object handler
	new(String route, (Request, Response) => Object handler) {
		super(route)
		this.route = route
		this.handler =handler
	}

	override handle(Request req, Response res) {
		return this.handler.apply(req,res)
	}

}
