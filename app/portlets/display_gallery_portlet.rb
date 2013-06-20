class DisplayGalleryPortlet < Cms::Portlet

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    @galleries ||= Gallery.published(:order => "created_at DESC", :limit => self.limit)
  end
    
end