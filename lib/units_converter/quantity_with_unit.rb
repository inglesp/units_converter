module UnitsConverter
  class QuantityWithUnit
    def initialize(quantity, unit)
      unit = ActiveSupport::Inflector.singularize(unit)
      @quantity_in_metres = UnitsConverter::CONVERSIONS_TO_METRES.fetch(unit) * quantity
    end

    def to(unit)
      unit = ActiveSupport::Inflector.singularize(unit)
      @quantity_in_metres / UnitsConverter::CONVERSIONS_TO_METRES.fetch(unit)
    end
  end
end
