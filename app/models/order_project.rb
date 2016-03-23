class OrderProject < ActiveRecord::Base
  belongs_to :project
  belongs_to :order

  validates :quantity, presence: true
  validates :project_id, presence: true
  validates :order_id, presence: true

  def total
    quantity * project.price
  end

  def self.top_project_revenue
    top_project.price * (top_project_info[1] / 100)
  end

  def self.top_project
    return if OrderProject.count == 0
    Project.find(top_project_info[0])
  end

  def self.top_project_info
    group(:project_id).sum(:quantity).sort_by { |project, count| count }.last
  end

  def display_total
    "$#{total / 100}"
  end
end