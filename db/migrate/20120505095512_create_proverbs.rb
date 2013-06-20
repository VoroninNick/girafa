class CreateProverbs < ActiveRecord::Migration
  def change
    Cms::ContentType.create!(:name => "Proverb", :group_name => "Proverb")
    create_content_table :proverbs, :prefix=>false do |t|
      t.string :name
      t.string :author

      t.timestamps
    end
  end
end
