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
    lvl = {}
    lvl1 = %w(Kawlin Kanbalu Ye-U Wetlet)
    lvl5 = %w(Mogaung Indaw Kalaw Kyunhla Monywa Maebin Mongmit)
    lvl10 = %w(Mohnyin Hsipaw Khin-U Ayadaw)
    lvl20 = %w(Hlaingbwe Buthidaung Kyauktaw Myauk-U Minbya Maungtaw Mogoke Thabeikkyin Budalin Mingin)
    lvl50 = %w(Hpakan Hpapun Paletwa Paletwa Kani Singu) 
    lvl1.each do |l| lvl[l] = 1; end
    lvl5.each do |l| lvl[l] = 5; end
    lvl10.each do |l| lvl[l] = 10; end
    lvl20.each do |l| lvl[l] = 20; end
    lvl50.each do |l| lvl[l] = 50; end

    status = "DISASTER" unless %w(Hpakan Mogaung Mohnyin Indaw Hsipaw Kalaw Paletwa Buthidaung Maungtaw Hpapun Hlaingbwe Mabein Mogoke Mongmit Singu Wetlet Ayadaw Monywa Budalin Kani Mingin Ye-U Kanbalu Khin-U Thabeikkyin Kyunhla Kawlin Kale Pwintpyu Mrauk-U Kyauktaw Minbya Myebon Hakha Minbu Aunglan).index(township).nil?

    l = Location.create(:state => state, :township => township, :status => status, 
                        :seq => (status == "NORMAL" ? 1000 : lvl[township]),
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


