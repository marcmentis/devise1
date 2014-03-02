json.array!(@guests) do |guest|
  json.extract! guest, :id, :first_name, :last_name, :tel_number, :address
  json.url guest_url(guest, format: :json)
end
