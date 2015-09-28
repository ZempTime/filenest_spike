class Upload < ActiveRecord::Base
  belongs_to :drop
  attachment :file
end
