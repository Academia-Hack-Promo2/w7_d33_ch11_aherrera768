#! /usr/bin/ruby

	# Actualizar el estado a "active" del usuario que creaste en el reto HTTP anterior.
	# Recuerda que ahora el usuario se ubica por username, no por identity, y que cambiaras el estado del usuario usando el verbo PUT
	# NOTA: el api no dejara que cambien el estado del usuario hasta que al menos 8 culminen el reto anterior.

require 'httparty'

class Todos
	include HTTParty
	base_uri 'http://hackapi.jgab.net/api/users/'

	def update(user)
		options = {body: user}
		self.class.put('', options)	
	end
end

record = Todos.new

# print record.list
print record.update({
	"username": "@angelicahr",
	"status": "active"
});