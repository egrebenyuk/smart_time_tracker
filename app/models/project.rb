class Project < ActiveRecord::Base
  belongs_to :company
  has_many :tasks
  
  validates :name, presence: true, length: { maximum: 30 }
end
