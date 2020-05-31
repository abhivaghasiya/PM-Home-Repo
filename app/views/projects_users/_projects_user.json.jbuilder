json.extract! projects_user, :id, :project_id, :user_id, :created_at, :updated_at
json.url projects_user_url(projects_user, format: :json)
