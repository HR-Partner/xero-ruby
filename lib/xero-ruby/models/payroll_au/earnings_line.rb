=begin
#Xero Payroll AU API

#This is the Xero Payroll API for orgs in Australia region.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'time'
require 'date'

module XeroRuby::PayrollAu
  require 'bigdecimal'

  class EarningsLine
    # Xero unique id for earnings rate
    attr_accessor :earnings_rate_id
    

    attr_accessor :calculation_type
    
    # Annual salary for earnings line
    attr_accessor :annual_salary
    
    # number of units for earning line
    attr_accessor :number_of_units_per_week
    
    # Rate per unit of the EarningsLine.
    attr_accessor :rate_per_unit
    
    # Normal number of units for EarningsLine. Applicable when RateType is \"MULTIPLE\"
    attr_accessor :normal_number_of_units
    
    # Earnings rate amount
    attr_accessor :amount
    
    # Earnings rate number of units.
    attr_accessor :number_of_units
    
    # Earnings rate amount. Only applicable if the EarningsRate RateType is Fixed
    attr_accessor :fixed_amount
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'earnings_rate_id' => :'EarningsRateID',
        :'calculation_type' => :'CalculationType',
        :'annual_salary' => :'AnnualSalary',
        :'number_of_units_per_week' => :'NumberOfUnitsPerWeek',
        :'rate_per_unit' => :'RatePerUnit',
        :'normal_number_of_units' => :'NormalNumberOfUnits',
        :'amount' => :'Amount',
        :'number_of_units' => :'NumberOfUnits',
        :'fixed_amount' => :'FixedAmount'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'earnings_rate_id' => :'String',
        :'calculation_type' => :'EarningsRateCalculationType',
        :'annual_salary' => :'BigDecimal',
        :'number_of_units_per_week' => :'BigDecimal',
        :'rate_per_unit' => :'BigDecimal',
        :'normal_number_of_units' => :'BigDecimal',
        :'amount' => :'BigDecimal',
        :'number_of_units' => :'BigDecimal',
        :'fixed_amount' => :'BigDecimal'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollAu::EarningsLine` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollAu::EarningsLine`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'earnings_rate_id')
        self.earnings_rate_id = attributes[:'earnings_rate_id']
      end

      if attributes.key?(:'calculation_type')
        self.calculation_type = attributes[:'calculation_type']
      end

      if attributes.key?(:'annual_salary')
        self.annual_salary = attributes[:'annual_salary']
      end

      if attributes.key?(:'number_of_units_per_week')
        self.number_of_units_per_week = attributes[:'number_of_units_per_week']
      end

      if attributes.key?(:'rate_per_unit')
        self.rate_per_unit = attributes[:'rate_per_unit']
      end

      if attributes.key?(:'normal_number_of_units')
        self.normal_number_of_units = attributes[:'normal_number_of_units']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'number_of_units')
        self.number_of_units = attributes[:'number_of_units']
      end

      if attributes.key?(:'fixed_amount')
        self.fixed_amount = attributes[:'fixed_amount']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @earnings_rate_id.nil?
        invalid_properties.push('invalid value for "earnings_rate_id", earnings_rate_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @earnings_rate_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          earnings_rate_id == o.earnings_rate_id &&
          calculation_type == o.calculation_type &&
          annual_salary == o.annual_salary &&
          number_of_units_per_week == o.number_of_units_per_week &&
          rate_per_unit == o.rate_per_unit &&
          normal_number_of_units == o.normal_number_of_units &&
          amount == o.amount &&
          number_of_units == o.number_of_units &&
          fixed_amount == o.fixed_amount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [earnings_rate_id, calculation_type, annual_salary, number_of_units_per_week, rate_per_unit, normal_number_of_units, amount, number_of_units, fixed_amount].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BigDecimal
        BigDecimal(value.to_s)
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        XeroRuby::PayrollAu.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash(downcase: false)
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        key = downcase ? attr : param
        hash[key] = _to_hash(value, downcase: downcase)
      end
      hash
    end

    # Returns the object in the form of hash with snake_case
    def to_attributes
      to_hash(downcase: true)
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value, downcase: false)
      if value.is_a?(Array)
        value.map do |v|
          v.to_hash(downcase: downcase)
        end
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.map { |k, v| hash[k] = _to_hash(v, downcase: downcase) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash(downcase: downcase)
      else
        value
      end
    end

    def parse_date(datestring)
      if datestring.include?('Date')
        date_pattern = /\/Date\((-?\d+)(\+\d+)?\)\//
        original, date, timezone = *date_pattern.match(datestring)
        date = (date.to_i / 1000)
        Time.at(date).utc.strftime('%Y-%m-%dT%H:%M:%S%z').to_s
      elsif /(\d\d\d\d)-(\d\d)/.match(datestring) # handles dates w/out Days: YYYY-MM*-DD
        Time.parse(datestring + '-01').strftime('%Y-%m-%dT%H:%M:%S').to_s
      else # handle date 'types' for small subset of payroll API's
        Time.parse(datestring).strftime('%Y-%m-%dT%H:%M:%S').to_s
      end
    end
  end
end
