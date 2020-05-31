class Note < ApplicationRecord
  belongs_to :user
  belongs_to :project
  belongs_to :task, counter_cache: true

  validates :task_id, uniqueness: { scope: :user_id }
  validates :body, length: { maximum: 1000 }, allow_blank: true

  after_save :set_body

  after_destroy :note_destroy_message

  def set_body
    puts "Created a new note"
  end

  def note_destroy_message
    puts 'Note destroyed'
  end
end
