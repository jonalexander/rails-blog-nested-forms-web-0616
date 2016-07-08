class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :post_tags
  has_many :tags, :through => :post_tags
  accepts_nested_attributes_for :tags, reject_if: proc { |attr| attr['name'].blank? }

  #accepts_nested_attributes_for :tags

  validates_presence_of :name, :content

  # def tags_attributes=(tags_hashes)
  #   #binding.pry
  #   tags_hashes.values.each do |tag_params|
  #     binding.pry
  #     self.tags.build(tag_params) if tag_params[:name].present?
  #   end
  # end

end
