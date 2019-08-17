def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |category, specs|
    specs.each do |quality, names|
      names.each do |name|
        if pigeons[name]
          pigeons[name][category] ? pigeons[name][category] << quality : pigeons[name][category] = [quality]
        else
          pigeons[name] = {category => [quality]}
        end
      end
    end
  end
  pigeons
end
