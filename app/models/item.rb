class Item < ActiveRecord::Base

attr_accessible :avatar
belongs_to :user
belongs_to :category

has_attached_file :avatar, styles {
   thumb:'100x100>',
   square: '200x200#',
   medium: '300x300>'
}


def self.search(search)
  if search
	find(:all, :conditions => ['iName LIKE ?', "%#{search}%"])
  else
	find(:all)
  end
end

end
