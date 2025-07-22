module Jekyll
  class CreationPage < Page
    def initialize(site, base, dir, creation)
      tag = creation['url_tag']

      @site = site
      @base = base
      @dir  = dir
      @name = "#{tag}.html"

      self.process(@name)

      self.data ||= {}
      self.data['layout'] = 'creation'

      self.data['creation_object'] = creation
      self.data['permalink'] = "/creations/#{tag}"
      self.data['title_id'] = tag
      self.data['content_wrap_id'] = "content-#{tag}-wrap"
    end
  end

  class CreationPageGenerator < Generator
    safe true

    def generate(site)
      creations = site.data['creations']
      creations.each do |creation|

        site.pages << CreationPage.new(site, site.source, "creations/", creation)
      end
    end
  end
end
