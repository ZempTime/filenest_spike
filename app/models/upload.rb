class Upload < ActiveRecord::Base
  belongs_to :drop
  attachment :file
  searchkick

  def image?
    !!(file_content_type =~ /image/i)
  end

  def text?
    !!(file_content_type =~ /text/i)
  end

  def video?
    !!(file_content_type =~ /video/i)
  end

  def display_text
    if text?
      file.read[0,200]
    else
      "Ain't nothin here bruh you got the wrong filetype"
    end
  end
end
