json.extract! applied_job, :id, :resume, :cover_letter, :text, :created_at, :updated_at
json.url applied_job_url(applied_job, format: :json)
