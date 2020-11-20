def nyc_pigeon_organizer(data)
  # write your code here!
  solution = data.each_with_object({}) do |(outer_key,outer_value), new_hash|
     outer_value.each do |inner_key,inner_value|
         inner_value.each do |inner_names|
            if !new_hash[inner_names] 
              new_hash[inner_names] = {}
         end
         if !new_hash[inner_names][outer_key]
             !new_hash[inner_names][outer_key] = []
         end
         new_hash[inner_names][outer_key] << inner_key.to_s
     end
  end
  end
  p solution
end
