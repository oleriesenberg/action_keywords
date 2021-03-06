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
      @meta_keywords = keywords.join(', ') if keywords.is_a?(Array)
      @meta_keywords = keywords if keywords.is_a?(String)
    end
  end
end
