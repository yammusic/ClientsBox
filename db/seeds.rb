# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'open-uri'

Country.delete_all
open("public/combos/country.txt") do |countries|
	countries.read.each_line do |country|
		code, name = country.chomp.split("|")
		Country.create!(:name => name, :code => code)
	end
end

State.delete_all
open("public/combos/states.txt") do |states|
	states.read.each_line do |state|
		code_country, code, name = state.chomp.split("|")
		State.create!(:name => name, :code_country => code_country, :code => code)
	end
end