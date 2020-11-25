require 'pry'

def nyc_pigeon_organizer(data)
  # Create a list of all pigeon names
  data.each_with_object({}) do |(key, value), final_array|
    # binding.pry
    value.each do |nested_key, names|
      # binding.pry
      names.each do |name|
        # binding.pry
        if !final_array[name]
          final_array[name] = {}
        end
        if !final_array[name][key]
          final_array[name][key] = []
        end
        final_array[name][key] << nested_key.to_s
        # binding.pry
      end
    end
   end
  # binding.pry
end