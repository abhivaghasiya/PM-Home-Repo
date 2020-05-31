class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable#, :trackable, :confirmable
  has_many :notes, dependent: :destroy
  has_many :tasks, dependent: :destroy

  validates :name, :role, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :gender, inclusion: { in: %w(M F), message: "only allows M or F" }
  validates :mobile, length: { minimum: 10 , maximum: 15 }

  after_destroy :user_destroy_message

  after_save :notifi_user

  after_initialize :set_gender
  after_initialize :set_country
  after_initialize :set_state
  after_initialize :set_city

  def set_gender
    self.gender = 'M' if self.gender.blank?
  end

  def set_country
    self.country = 'India' if self.country.blank?
  end

  def set_state
    self.state = 'Gujrat' if self.state.blank?
  end

  def set_city
    self.city = 'Surat' if self.city.blank?
  end

  def notifi_user
    # Send Email code
  end

  def user_destroy_message
    puts 'User destroyed'
  end
end
