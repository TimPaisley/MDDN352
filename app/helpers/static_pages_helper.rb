module StaticPagesHelper
	def parse_display(id = '', type = '')
		hash = JSON.parse(File.read('public/assets/display-data/' + id + '.json'))
		hash[type]
	end
end