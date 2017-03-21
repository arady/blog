class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  has_attached_file :thumbnail, styles: { small: '450x450>', normal: '2500x1700>'}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/ 

  validates_attachment_presence :thumbnail

end
