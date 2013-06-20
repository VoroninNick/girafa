class QuotationPortlet < Cms::Portlet

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    @proverb = Proverb.find :first, :offset => rand(Proverb.count)
  end
    
end