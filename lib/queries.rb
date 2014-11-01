def first_names(data)
  array = []
  data[:people].each_value do |person|
    array << person[:first_name]
  end
  array
end

def last_names(data)
  array = []
  data[:people].each_value do |person|
    array << person[:last_name]
  end
  array
end

def full_names(data)
  array = []
  data[:people].each_value do |person|
    array << "#{person[:first_name]} #{person[:last_name]}"
  end
  array
end

def last_name_first_names(data)
  array = []
  data[:people].each_value do |person|
    array << "#{person[:last_name]}, #{person[:first_name]}"
  end
  array
end

def company_names(data)
  array = []
  data[:companies].each do |comp|
    array << comp[:name]
  end
  array
end

def employees(data, company_name)
  array = []
  compID = 0
  data[:companies].each do |comp|
    if comp[:name] == company_name
      compID = comp[:id]
    end
  end

  data[:people].each_value do |person|
    if person[:company_id] == compID
      array << person
    end
  end
  array
end


def employee_names(data, compID)
  array = []
  data[:people].each_value do |person|
    if compID == person[:company_id]
      array << "#{person[:first_name]} #{person[:last_name]}"
    end
  end
  array
end

def employee_ids(data, compID)
  array = []
  data[:people].each_value do |person|
    if person[:company_id] == compID
      array << data[:people].key(person)
    end
  end
  array
end
