require 'csv'

# Clean up old seed data

Product.destroy_all
ProductCategory.destroy_all
BusinessCategory.destroy_all
User.destroy_all

puts "Pre-existing data cleared"

# Load products and product categories

table = CSV.parse(File.read('./db/startup_applications.csv'), headers: true)

table.each do |row|
    name = row[0]
    product_category = ProductCategory.find_or_create_by(name: row[1])
    description = row[2]
    image_url = row[3]
    website = row[4]
    
    Product.create(name: name, product_category: product_category, description: description, image_url: image_url, website: website)
end

puts "Products and product categories created"

# Load business categories

categories = ["Education", "Food & drink", "Travel and transport", "Science, technology and engineering", "Finance", "Media/news company", "Legal", "Non-governmental organisation (NGO)", "Sport & recreation", "Agriculture", "Medical & health", "Shopping & retail", "Automotive, aircraft and boat", "Hotel and B&B", "Non-profit organisation", "Advertising/marketing", "Arts & entertainment", "Property", "Public & government service", "Local service", "Beauty, cosmetic & personal care"]

subcategories = ["Bakery", "Bagel shop", "Bar", "Bottled water company", "Brewery", "Bubble tea shop", "Butcher's shop", "Cafeteria", "Café", "Caterer", "Cheese shop", "Convenience store", "Deli", "Dessert shop", "Distillery", "Doughnut shop", "Farmers' market", "Food consultant", "Food delivery service", "Food service distributor", "Food stall", "Food wholesaler", "Personal chef", "Restaurant", "Sandwich shop", "Smoothie and juice bar", "Snack van", "Supermarket/Convenience store", "Wine, beer and spirits shop", "Winery/Vineyard"]

categories.each do |cat|
    BusinessCategory.create(name: cat)
end

subcategories.each do |subcat|
    BusinessCategory.create(name: subcat, parent: BusinessCategory.find_or_create_by(name: "Food & drink"))
end

puts "Business categories created"