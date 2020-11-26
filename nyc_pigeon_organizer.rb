require 'pry'
def nyc_pigeon_organizer(data)
#extract names and make them keys
final_result = data.each_with_object({}) do |(key, value), final_array|
value.each do |inner_key, names|
  names.each do |name|
   #  binding.pry
    if !final_array[name]
      final_array[name] = {}
end
if !final_array[name][key]  
  final_array[name][key]= []
end
string_inner_key = inner_key.to_s
final_array[name][key].push(string_inner_key)

  end
end

     
end

end

