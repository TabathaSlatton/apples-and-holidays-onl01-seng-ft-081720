require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash.each do |season, holidays|
  if season == :winter
    holidays.each do |holiday, supplies_array|
      supplies_array.push(supply)
      end
  end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holidays|
    if season == :spring
      holidays.each do |holiday, supplies_array|
        supplies_array.push(supply)
        end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_winter_supplies = []
  # binding.pry
  holiday_hash.each do |season, holidays|
    # binding.pry
    if season == :winter
      holidays.each do |holiday, supplies_array|
        # binding.pry
        supplies_array.each do |supply|
          # binding.pry
          all_winter_supplies << supply
          # binding.pry
        end
      end
    end
  end
  all_winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  supplies_string = ""
  supply_array = []
  holiday_hash.each do |season, holidays|
    # supplies_string << 
    puts "#{season.to_s.capitalize!}:"
    holidays.each do |holiday, supplies_array|
      holiday_ar = holiday.to_s
      holiday_ar = holiday_ar.split("_")
        holiday_ar.each do |word|
          word.capitalize!
        end
        # supplies_string << 
        puts "  #{holiday_ar.join(" ")}: #{supplies_array.join(", ")}"
        # supplies_string << 

    end
  end
  # puts supplies_string
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []
  holiday_hash.each do |season, holidays|
      holidays.each do |holiday, supplies_array|
        if supplies_array.include?("BBQ")
          bbq_array << holiday
        end
    end
  end
  bbq_array
end







