class Task < ApplicationRecord
  belongs_to :project
  belongs_to :user
  has_many :notes

  validates :title,:status,:start_date,:estimated_time, presence: true
  validates :description, length: { maximum: 500 }

  before_validation :set_status

  before_validation :set_start_date

  after_destroy :task_destroy_message

  def set_status
    self.status = 'Active' if self.status.blank?
  end

  def set_start_date
    self.start_date = Time.now if self.start_date.blank?
  end

  def task_destroy_message
    puts 'Task destroyed'
  end
end
