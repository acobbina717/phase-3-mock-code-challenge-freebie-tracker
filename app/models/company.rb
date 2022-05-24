class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def give_freebie(dev,item_name, value)
    Freebie.create(item_name: item_name, value: value, dev_id: dev.id, company_id: self.id)
  end

  def self.oldest_company
   founding_year = Company.pluck(:founding_year).min
   Company.find_by("founding_year = ?", founding_year)
  end
end
