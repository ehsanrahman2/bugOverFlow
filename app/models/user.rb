class User < ActiveRecord::Base
 has_many :bugs
 validates :fname, :lname, :email, :presence => true
 validates :email, :uniqueness => true
 validates_format_of :email, :with => /@/
 validates :thumbnail, allow_blank: true, format: {with:%r{\.(gif|jpg|png)\Z}i,message: 'must be a URL for GIF, JPG or PNG image.'}
end
