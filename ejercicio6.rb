class Product
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

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
	ls = prod.split(', ')
	products_list << Product.new(*ls)
end

products_list.each{|p| puts p.average_price}