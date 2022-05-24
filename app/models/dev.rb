class Dev < ActiveRecord::Base
has_many :freebies
has_many :companies, through: :freebies

def received_one?(item_name)
  recieved  = self.freebies.where(item_name: item_name);
  recieved.empty?
  end
end
