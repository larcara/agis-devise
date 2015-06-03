class Category < ActiveRecord::Base
  acts_as_nested_set

  def full_name
    if parent_id
      "#{parent.full_name}/#{name}"
    else

      "#{name}"
    end
  end

  def to_label
    "#{full_name}"
  end

end
