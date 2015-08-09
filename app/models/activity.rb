class Activity < ActiveRecord::Base

  validates :amount, :budget_id, :kind_id, :date, presence: true

  belongs_to :budget
  belongs_to :kind

  default_scope -> { order(:date) }

end
