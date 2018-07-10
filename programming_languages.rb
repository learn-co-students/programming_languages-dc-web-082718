require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each { |style, h_lang|
    h_lang.each { |language, h_type |
      # if language == :javascript then binding.pry end
      if !new_hash[language] then new_hash[language] = {} end
      new_hash[language].merge!(h_type)
      if !new_hash[language][:style] then new_hash[language][:style] = [] end
      new_hash[language][:style] += [style]
    }
   }

# languages.each { |k,v|
#   v.keys.each { |k,v|
#     new_hash[k] = v
#   }
# }
   # new_hash[v.keys[0]] = v.values[0]
   new_hash
end
