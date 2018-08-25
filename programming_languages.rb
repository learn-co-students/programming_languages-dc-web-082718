languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  new_languages = {}
  languages.each do |type, hash|
    hash.each do |name, attributes|
      new_languages[name] ||= attributes
      new_languages[name][:style] ||= []
      new_languages[name][:style] << type
      puts new_languages
    end
  end
  new_languages
end


reformat_languages(languages)