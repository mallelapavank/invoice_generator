json.extract! organisation, :id, :name, :email, :address, :phone, :website, :logo_url, :created_at, :updated_at
json.url organisation_url(organisation, format: :json)
