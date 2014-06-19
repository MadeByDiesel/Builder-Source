json.array!(@jobs) do |job|
  json.extract! job, :id, :jobname, :description, :poster_id
  json.url job_url(job, format: :json)
end
