class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, presence: true, length: {minimum: 200}
    validates :category, presence: true, inclusion: { in: %w(Fiction Non-Fiction) }
end
