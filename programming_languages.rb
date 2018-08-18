def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, language_key|
    language_key.each do |name, type|
      if new_hash.has_key?(name) == false
        new_hash[name] = {
          style: [style],
          type: languages[style][name][:type]
        }
      else
        new_hash[name][:style] << style
      end
    end
  end

  new_hash
end
