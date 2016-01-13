class Task < ActiveRecord::Base
  belongs_to :company
  belongs_to :project
  belongs_to :user

  [:name, :user_id, :project_id, :company_id].each do |column|
    validates :name, presence: true
  end

end
