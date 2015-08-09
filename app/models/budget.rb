class Budget < ActiveRecord::Base

  validates :user_id, :name, presence: true

  belongs_to :user
  has_many   :activities
end
