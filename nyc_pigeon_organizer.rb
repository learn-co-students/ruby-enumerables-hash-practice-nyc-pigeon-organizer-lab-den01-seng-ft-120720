def nyc_pigeon_organizer(data)
  # write your code here!
  betterData= Hash.new
data[:gender].each do |key, array|
    array.each do |name|
      betterData[:"#{name}"] = {:gender => ["#{key}"], :color=> [], :lives =>[]}
    end
  end
data[:color].each do |key, array|
    array.each do |name|
      betterData[:"#{name}"][:color]<< "#{key}"
    end
  end
  data[:lives].each do |key, array|
    array.each do |name|
      betterData[:"#{name}"][:lives]<<"#{key}"
    end
  end
  betterData.map { |k, v| [k.to_s, v]}.to_h
  end