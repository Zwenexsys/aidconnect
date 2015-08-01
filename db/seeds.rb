# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

data = File.open("db/census_tablea3.csv").readlines
data.each do |line|
    state, district, township, total_male, total_female, urban_total_male, urban_total_female, rural_total_male, rural_total_female = line.split("\t")
    status = "NORMAL"
    status = "DISASTER" unless %w(Kawlin Kale Pwintpyu Mrauk-U Kyauktaw Minbya Myebon Hakha Minbu Aunglan).index(township).nil?
    l = Location.create(:state => state, :township => township, :status => status, 
                        :seq => (status == "NORMAL" ? 100 : 1),
                        :mm_state => "",
                        :mm_township => "",
                        :demographic => {
                            :state => state.strip, 
                            :district => district.strip, 
                            :township => township.strip, 
                            :total_male => total_male.strip.to_i, 
                            :total_female => total_female.strip.to_i, 
                            :urban_total_male => urban_total_male.strip.to_i, 
                            :urban_total_female => urban_total_female.strip.to_i, 
                            :rural_total_male => rural_total_male.strip.to_i, 
                            :rural_total_female => rural_total_female.strip.to_i
    })
end


