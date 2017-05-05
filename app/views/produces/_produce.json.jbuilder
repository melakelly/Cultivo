json.extract! produce, :id, :title, :price, :description, :img_url, :created_at, :updated_at
json.url produce_url(produce, format: :json)