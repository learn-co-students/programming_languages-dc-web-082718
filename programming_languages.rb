def reformat_languages(languages)
  # your code here
  new_hash = {};
  temp_array = [];
  first_pass = false
  languages.each do |tier_one_key, tier_one_value|
    tier_one_value.each do |language, attributes|
      if new_hash[language] == nil
        new_hash[language] = attributes
      end
      if new_hash[language][:style] == nil
        temp_array.push(tier_one_key)
        new_hash[language][:style] = temp_array
      end
      temp_array = new_hash[language][:style]
      if !temp_array.include?(tier_one_key)
        temp_array.push(tier_one_key)
        new_hash[language][:style] = temp_array
      end
      temp_array = [];
    end
    first_pass = true
  end

  new_hash
end
