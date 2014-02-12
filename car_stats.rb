class CarStats
	def self.calc_top_color(array)
		most = nil

		groups = array.inject({}) do |hsh, car|
			hsh[car.color] = [] if hsh[car.color].nil?
			hsh[car.color] << car

			most = car.color if hsh[most].nil? || hsh[car.color].size >hsh[most].size
			hsh
		end
		groups[most][0].color
	end

	def self.calc_bottom_color(array)
		least = nil

		groups = array.inject({}) do |hsh, car|
			hsh[car.color] = [] if hsh[car.color].nil?
			hsh[car.color] << car

			least = car.color if hsh[least].nil? || hsh[car.color].size <hsh[least].size
			hsh
		end
		groups[least][0].color
	end
end
