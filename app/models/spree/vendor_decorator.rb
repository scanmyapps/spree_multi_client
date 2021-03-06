Spree::Vendor.class_eval do
  clear_validators!

  validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :client_id }

  validates :slug, uniqueness: true
  
end
