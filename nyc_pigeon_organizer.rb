require 'pry'

def nyc_pigeon_organizer(data)
  updated_list = data.each_with_object({}) do |(key, value), array|
    value.each do |inner_key, name|
      name.each do |name|
      if !array[name]
        array[name] = {}
      end
      if !array[name][key]
        !array[name][key] = []
      end
      final_array[name][key] << inner_key.to_s 
    end
  end
end 
end 