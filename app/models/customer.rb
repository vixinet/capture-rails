class Customer < ApplicationRecord
	mount_uploader :logo, CustomerLogoUploader
end
