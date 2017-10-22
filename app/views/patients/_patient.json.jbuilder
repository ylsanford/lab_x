json.extract! patient, :id, :p_first_name, :p_last_name, :p_middle_name, :p_birthday, :p_address, :p_address_2, :p_city, :p_state, :p_zip_code, :practice_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)
