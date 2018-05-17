class Product
	attr_reader :name, :large, :medium, :small, :xsmall
	def initialize(name, large, medium, small, xsmall)
		@name = name
		@large = large.to_i
		@medium = medium.to_i
		@small = small.to_i
		@xsmall = xsmall.to_i
	end

	def average_price
		(@large + @medium + @small + @xsmall)/4
	end
end
	data = []
	File.open('catalogo.txt', 'r') { |file| data = file.readlines}

def nuevo_catalogo(data)
	products_list = []
	data.each do |prod|
		ls = prod.split(', ')
		products_list << Product.new(*ls)
	end
	file = File.new('nuevo_catalogo.txt', 'w')
	products_list.each{|p| file.puts "#{p.name}, #{p.large}, #{p.medium}, #{p.small}"}
	file.close
end

nuevo_catalogo(data)