json.extract! order, :id, :title, :price, :amount, :username, :firstName, :lastName, :address, :city, :state, :zipcode, :phoneNumber, :comment, :created_at, :updated_at
json.url order_url(order, format: :json)
