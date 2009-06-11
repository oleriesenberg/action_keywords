module ActionKeywords
  module ViewHelper
    def keywords_tag(defaults = {:default => ''})
      keywords = if @meta_keywords
        defaults[:default] + ', ' + @meta_keywords
      else
        defaults[:default]
      end
      tag(:meta, { :name => "keywords", :content => keywords })
    end
  end
  
  module ControllerHelper
    def keywords(keywords = [])
      @meta_keywords = keywords.to_a.join(', ')
    end
  end
end
