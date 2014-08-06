json.array!(@measurements) do |measurement|
  json.extract! measurement, :measurement_date, :bust, :waist, :hip, :rthigh, :lthigh, :rbicep, :lbicep, :user_id,
  json.url measurement_url(measurement, format: :json)
end