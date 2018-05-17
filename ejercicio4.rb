class Dog
	attr_reader :nombre
	def initialize (nombre, raza, color)
		@nombre = nombre
		@raza = raza
		@color = color
	end

	def ladrar
		puts "#{nombre} está ladrando!"
	end
end


propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

dog = Dog.new(*propiedades.values)

dog.ladrar