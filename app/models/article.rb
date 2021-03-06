class Article < ActiveRecord::Base
  has_many :suggested_readings, dependent: :destroy
  belongs_to :category
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
