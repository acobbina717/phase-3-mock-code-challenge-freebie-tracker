puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
gazo = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

Freebie.create(item_name: "Water Bottle", value:5, dev_id: rick.id, company_id: google.id)
Freebie.create(item_name: "TV", value:9, dev_id: morty.id, company_id: facebook.id )
Freebie.create(item_name: "PS5", value:12, dev_id: gazo.id, company_id: facebook.id )
# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

puts "Seeding done!"
