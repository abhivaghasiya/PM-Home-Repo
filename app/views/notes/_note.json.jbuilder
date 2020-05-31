json.extract! note, :id, :task_id, :body, :user_id, :created_at, :updated_at
json.url note_url(note, format: :json)
