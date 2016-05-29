module ApplicationHelper

	# returns the full title on a per-page basis
	def full_title(page_title = '')
		base_title = "Te Arahi"
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end
	end

	def parse_exhibit(exhibitId = '', type = '')
		hash = JSON.parse(File.read('public/assets/' + exhibitId + '.json'))
		hash[type]
	end
	
	def parse_display(exhibitId = '', displayId = '', type = '')
		hash = JSON.parse(File.read('public/assets/' + exhibitId + '/' + displayId + '.json'))
		hash[type]
	end
end
