class Page < ActiveRecord::Base
  has_many :products

  def self.lp_data_value(landing_page_name, field)
    PageData.public_send(landing_page_name.to_s)[field.to_s]
  end
  def self.lp_data(landing_page_name)
    h = Hash.new
    self.column_names.reject { |c| c =~ /id|created_at|updated_at/ }.each do |k|
      h[k] = self.lp_data_value(landing_page_name, k)
    end
    h
  end
end
