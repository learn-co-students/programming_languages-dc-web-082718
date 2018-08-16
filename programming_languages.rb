require 'pry'

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
  new_hash = {}
  array_style = []
  
  languages.each do |oo, lang_name|
    array_style.push(oo)

    lang_name.each do |name, type|
      new_hash[name] = type
      
      if oo == :oo 
        new_hash[name][:style] = [array_style[0]]
      elsif oo == :functional && name != :javascript
        new_hash[name][:style] = [array_style[1]]
      else
        new_hash[name][:style] = array_style
      end
    end
  end

  new_hash
end