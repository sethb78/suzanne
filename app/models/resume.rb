class Resume < ActiveRecord::Base
  # before_save :is_active?
  #   mount_uploader :document, ResumeUploader

  # def is_active?
  #   if self.active == true
  #      Resume.where('id != ?', self.id).each do |item|
  #       item.active = false
  #       item.save
  #     end
  #   end
  # end
end
