FactoryGirl.define do
  factory :event do
    owner_id 1
category_id 1
date_from "2015-05-29"
date_to "2015-05-29"
time_from "2015-05-29 16:37:37"
time_to "2015-05-29 16:37:37"
weekdays "MyText"
note "MyText"
description "MyText"
photo1 "MyText"
photo2 "MyText"
photo3 "MyText"
only_for_member false
  end

end
