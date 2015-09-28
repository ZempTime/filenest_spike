class Drop < ActiveRecord::Base
  has_many :uploads
  accepts_attachments_for :uploads, append: true

  def self.freshest
    unless Drop.last && !Drop.last.uploads.any?
      Drop.create
    else
      Drop.last
    end
  end
end
