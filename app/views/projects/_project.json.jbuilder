json.extract! project, :id, :title, :description, :manager_id, :website, :start_date, :end_date, :active, :created_at, :updated_at
json.url project_url(project, format: :json)
