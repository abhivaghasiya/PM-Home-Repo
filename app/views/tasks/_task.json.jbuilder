json.extract! task, :id, :project_id, :title, :description, :status, :user_id, :start_date, :end_date, :spend_time, :estimated_time, :created_at, :updated_at
json.url task_url(task, format: :json)
