namespace :create_category do


desc 'add master categorys for article'
task add_article_category: :environment do

	["web series","latest shows","latest trends"].each do |cc|
           MasterCategory.create(name: cc)
	end

end


end
