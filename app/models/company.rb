class Company < ActiveRecord::Base
  has_many :projects
  has_many :tasks

  validates :name, :presence: true, length: { maximum: 30 }
end
