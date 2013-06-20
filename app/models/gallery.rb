class Gallery < ActiveRecord::Base
  acts_as_content_block
  has_many_attachments :photos, :styles => {:medium => "285x185#", :mini => "136x108#", :fancybox => "800x800#"}
end