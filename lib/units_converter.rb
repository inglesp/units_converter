require "bigdecimal"

require "active_support/core_ext/hash/indifferent_access"
require "active_support/inflector"

require "inflections"
require "units_converter/quantity_with_unit"
require "units_converter/version"

module UnitsConverter
  def self.convert(quantity, unit)
    QuantityWithUnit.new(quantity, unit)
  end

  CONVERSIONS_TO_METRES = {
    :metre => BigDecimal.new("1"),
    :kilometre => BigDecimal.new("1000"),
    :centimetre => BigDecimal.new("0.01"),
    :millimetre => BigDecimal.new("0.001"),
    :mile => BigDecimal.new("1609.344"),
    :yard => BigDecimal.new("0.9144"),
    :foot => BigDecimal.new("0.3048"),
    :inch => BigDecimal.new("0.0254"),
    :furlong => BigDecimal.new("201.168"),
    :fathom => BigDecimal.new("1.8288"),
  }.with_indifferent_access
end
