json.array! @properties do |property|
  json.level do
    json.id property[:id]
    json.properties property[:properties]
  end
end