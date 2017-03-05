json.extract! company, :id, :name, :nearest_city, :distance, :population, :category_id, :description, :keywords, :created_at, :updated_at
json.url company_url(company, format: :json)
