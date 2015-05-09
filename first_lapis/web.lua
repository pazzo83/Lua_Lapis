local lapis = require "lapis"
local app = lapis.Application()

app:enable("etlua")
app.layout = require "views.layout"

app:get("/", function(self)
	self.my_favorite_things = {
		"Dogs",
		"Baseball",
		"Arepas"
	}

	return { render = "index" }
end)

lapis.serve(app)
