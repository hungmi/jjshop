class PageData < Settingslogic
  source "#{Rails.root}/config/page_data.yml"
  namespace Rails.env
end