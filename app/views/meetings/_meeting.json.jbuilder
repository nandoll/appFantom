json.extract! meeting, :id, :dni, :name, :lastname, :email, :cel, :date, :status, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
