package test

class Views {
	def static String test(String name) {
		'''
		<html>
		<head>
		</head>
		<body>
		Hello, «name»!
		</body>
		</html>
		'''.toString
	}
}

