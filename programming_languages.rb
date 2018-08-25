require "pry-byebug"
def reformat_languages(languages)
  # your code here
  new_hash = {}
    languages.each do |language_type, language_hash| #1st level
      language_hash.each do |language_name, type_hash|#2nd level
        type_hash.each do |type_key, type_value|#3rd level
          if !new_hash[language_name]#if not true continue to next step
            new_hash[language_name] = {type_key => type_value, :style => [language_type]} # creates a key/pair value where the value is another hash
          else
            new_hash[language_name][:style] << language_type #push the original language type from the 1st level into the new hash at the style value
          end
        end
      end
    end
  new_hash #return new hash
end
