class Project < ApplicationRecord
  has_many :tasks
  has_and_belongs_to_many :users
  belongs_to :manager, class_name: "User", optional: true

  validates :title, presence: true
  validates :start_date, presence: true
  validates :description, length: { maximum: 500 }
  validates :website, format: { with: /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix }
  before_validation :set_start_date

  after_destroy :project_destroy_message

  def set_start_date
    self.start_date = Time.now if self.start_date.blank?
  end

  def project_destroy_message
    puts "Project destroyed"
  end
end
