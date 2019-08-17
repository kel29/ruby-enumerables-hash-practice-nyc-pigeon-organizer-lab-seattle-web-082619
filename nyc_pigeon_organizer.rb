def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |category, specs|
    specs.each do |quality, names|
      names.each do |name|
        if pigeons[name]
          puts "#{name} is already in the hash"
        else
          pigeons[name] = {category => quality}
        end
      end
    end
  end
  pigeons
end
