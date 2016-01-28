class FileUpload < ActiveRecord::Base
  validates :user_id, presence: true
  validates :client_file, presence: true

  belongs_to :user

  has_attached_file :client_file

  def parse_file
    # @file_upload.map...
    # @imported_bookmarks = { }
    bookmark_html = Nokogiri::HTML(open(@file_upload))

  end

##################################################################
# ORIGINAL JAVASCRIPT
#
#    [].map.call(document.querySelectorAll("dt a"), function(a) {
#      return a.textContent + " - " + a.href
#    }).join("\n");
###################################################################

end
