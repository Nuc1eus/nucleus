class Item < ActiveRecord::Base
  self.table_name='items'
  :has_one locations;
end
