class Banner < ActiveRecord::Base
  acts_as_content_block
  has_many_attachments :banners, :styles => { :test => "100x100>" }
end