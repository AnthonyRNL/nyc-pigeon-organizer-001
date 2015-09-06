require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  newData = {}
  data.each do |key,value|
    value.each do |k,v|
      v.each do |x|
        newData[x] = {}
      end
    end
  end
  data.each do |key,value|
    value.each do |k,v|
      v.each do |x|
        if key == :color && !newData[x][key]
          newData[x][key] = [k.to_s]
        elsif key == :color && newData[x][key]
          newData[x][key] << k.to_s
        else
          newData[x][key] = [k.to_s]
        end
      end
    end
  end
  return newData
end
