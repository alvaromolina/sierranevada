class Order < ActiveRecord::Base
  attr_accessible :city, :company, :desh, :email, :leg5, :leg6, :leg7, :name, :payment, :phone, :units, :message, :lomo, :lomo_units
end
