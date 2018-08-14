def reformat_languages(languages)
  
  new_hash = {}
  
  languages.each do |style, language_hash|
    language_hash.each do |language_key, type|
      if new_hash.key?(language_key) == false
        new_hash[language_key] = {
          :style => [style],
          :type => languages[style][language_key][:type]}
      else
        new_hash[language_key][:style] << style 
      end 
      
    end
  end 
  
  new_hash
  
end