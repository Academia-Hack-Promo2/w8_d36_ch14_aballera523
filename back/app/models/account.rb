class Account < ActiveRecord::Base
	validates :a_type, :number, :balance, presence: true
	validates :a_type, length: {maximum: 15, :too_long => "%{count} caracteres es el máximo permitido"}
	validates :number, length: {maximum: 23, :too_long => "%{count} caracteres es el máximo permitido"}
	validates :balance, numericality: true
	belongs_to :customer	
	has_many :operations
end
