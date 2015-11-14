require "units_converter"

RSpec::Matchers.define(:be_converted_to) do |new_quantity_and_unit|
  new_quantity = BigDecimal.new(new_quantity_and_unit[0])
  new_unit = new_quantity_and_unit[1]

  match do |old_quantity_and_unit|
    old_quantity = BigDecimal.new(old_quantity_and_unit[0])
    old_unit = old_quantity_and_unit[1]
    UnitsConverter.convert(old_quantity, old_unit).to(new_unit) == new_quantity
  end

  failure_message do |old_quantity_and_unit|
    old_quantity = BigDecimal.new(old_quantity_and_unit[0])
    old_unit = old_quantity_and_unit[1]

    "expected that #{old_quantity} #{old_unit} in #{new_unit} would be #{new_quantity}"
  end
end
