json.extract! profile, :id, :name, :guest, :rehearsal, :attending_rehearsal, :attending_wedding, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
