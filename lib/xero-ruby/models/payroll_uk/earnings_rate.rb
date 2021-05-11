=begin
#Xero Payroll UK

#This is the Xero Payroll API for orgs in the UK region.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollUk
  require 'bigdecimal'

  class EarningsRate
    # Xero unique identifier for an earning rate
    attr_accessor :earnings_rate_id
    
    # Name of the earning rate
    attr_accessor :name
    
    # Indicates how an employee will be paid when taking this type of earning
    attr_accessor :earnings_type
    ALLOWANCE = "Allowance".freeze
    BACKPAY = "Backpay".freeze
    BONUS = "Bonus".freeze
    COMMISSION = "Commission".freeze
    LUMP_SUM = "LumpSum".freeze
    OTHER_EARNINGS = "OtherEarnings".freeze
    OVERTIME_EARNINGS = "OvertimeEarnings".freeze
    REGULAR_EARNINGS = "RegularEarnings".freeze
    STATUTORY_ADOPTION_PAY = "StatutoryAdoptionPay".freeze
    STATUTORY_ADOPTION_PAY_NON_PENSIONABLE = "StatutoryAdoptionPayNonPensionable".freeze
    STATUTORY_BEREAVEMENT_PAY = "StatutoryBereavementPay".freeze
    STATUTORY_MATERNITY_PAY = "StatutoryMaternityPay".freeze
    STATUTORY_MATERNITY_PAY_NON_PENSIONABLE = "StatutoryMaternityPayNonPensionable".freeze
    STATUTORY_PATERNITY_PAY = "StatutoryPaternityPay".freeze
    STATUTORY_PATERNITY_PAY_NON_PENSIONABLE = "StatutoryPaternityPayNonPensionable".freeze
    STATUTORY_PARENTAL_BEREAVEMENT_PAY_NON_PENSIONABLE = "StatutoryParentalBereavementPayNonPensionable".freeze
    STATUTORY_SHARED_PARENTAL_PAY = "StatutorySharedParentalPay".freeze
    STATUTORY_SHARED_PARENTAL_PAY_NON_PENSIONABLE = "StatutorySharedParentalPayNonPensionable".freeze
    STATUTORY_SICK_PAY = "StatutorySickPay".freeze
    STATUTORY_SICK_PAY_NON_PENSIONABLE = "StatutorySickPayNonPensionable".freeze
    TIPS_DIRECT = "Tips(Direct)".freeze
    TIPS_NON_DIRECT = "Tips(Non-Direct)".freeze
    
    # Indicates the type of the earning rate
    attr_accessor :rate_type
    RATE_PER_UNIT = "RatePerUnit".freeze
    MULTIPLE_OF_ORDINARY_EARNINGS_RATE = "MultipleOfOrdinaryEarningsRate".freeze
    FIXED_AMOUNT = "FixedAmount".freeze
    
    # The type of units used to record earnings
    attr_accessor :type_of_units
    
    # Indicates whether an earning type is active
    attr_accessor :current_record
    
    # The account that will be used for the earnings rate
    attr_accessor :expense_account_id
    
    # Default rate per unit (optional). Only applicable if RateType is RatePerUnit
    attr_accessor :rate_per_unit
    
    # This is the multiplier used to calculate the rate per unit, based on the employee’s ordinary earnings rate. For example, for time and a half enter 1.5. Only applicable if RateType is MultipleOfOrdinaryEarningsRate
    attr_accessor :multiple_of_ordinary_earnings_rate
    
    # Optional Fixed Rate Amount. Applicable for FixedAmount Rate
    attr_accessor :fixed_amount
    
    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'earnings_rate_id' => :'earningsRateID',
        :'name' => :'name',
        :'earnings_type' => :'earningsType',
        :'rate_type' => :'rateType',
        :'type_of_units' => :'typeOfUnits',
        :'current_record' => :'currentRecord',
        :'expense_account_id' => :'expenseAccountID',
        :'rate_per_unit' => :'ratePerUnit',
        :'multiple_of_ordinary_earnings_rate' => :'multipleOfOrdinaryEarningsRate',
        :'fixed_amount' => :'fixedAmount'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'earnings_rate_id' => :'String',
        :'name' => :'String',
        :'earnings_type' => :'String',
        :'rate_type' => :'String',
        :'type_of_units' => :'String',
        :'current_record' => :'Boolean',
        :'expense_account_id' => :'String',
        :'rate_per_unit' => :'BigDecimal',
        :'multiple_of_ordinary_earnings_rate' => :'BigDecimal',
        :'fixed_amount' => :'BigDecimal'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollUk::EarningsRate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollUk::EarningsRate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'earnings_rate_id')
        self.earnings_rate_id = attributes[:'earnings_rate_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'earnings_type')
        self.earnings_type = attributes[:'earnings_type']
      end

      if attributes.key?(:'rate_type')
        self.rate_type = attributes[:'rate_type']
      end

      if attributes.key?(:'type_of_units')
        self.type_of_units = attributes[:'type_of_units']
      end

      if attributes.key?(:'current_record')
        self.current_record = attributes[:'current_record']
      end

      if attributes.key?(:'expense_account_id')
        self.expense_account_id = attributes[:'expense_account_id']
      end

      if attributes.key?(:'rate_per_unit')
        self.rate_per_unit = attributes[:'rate_per_unit']
      end

      if attributes.key?(:'multiple_of_ordinary_earnings_rate')
        self.multiple_of_ordinary_earnings_rate = attributes[:'multiple_of_ordinary_earnings_rate']
      end

      if attributes.key?(:'fixed_amount')
        self.fixed_amount = attributes[:'fixed_amount']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @earnings_type.nil?
        invalid_properties.push('invalid value for "earnings_type", earnings_type cannot be nil.')
      end

      if @rate_type.nil?
        invalid_properties.push('invalid value for "rate_type", rate_type cannot be nil.')
      end

      if @type_of_units.nil?
        invalid_properties.push('invalid value for "type_of_units", type_of_units cannot be nil.')
      end

      if @expense_account_id.nil?
        invalid_properties.push('invalid value for "expense_account_id", expense_account_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @earnings_type.nil?
      earnings_type_validator = EnumAttributeValidator.new('String', ["Allowance", "Backpay", "Bonus", "Commission", "LumpSum", "OtherEarnings", "OvertimeEarnings", "RegularEarnings", "StatutoryAdoptionPay", "StatutoryAdoptionPayNonPensionable", "StatutoryBereavementPay", "StatutoryMaternityPay", "StatutoryMaternityPayNonPensionable", "StatutoryPaternityPay", "StatutoryPaternityPayNonPensionable", "StatutoryParentalBereavementPayNonPensionable", "StatutorySharedParentalPay", "StatutorySharedParentalPayNonPensionable", "StatutorySickPay", "StatutorySickPayNonPensionable", "Tips(Direct)", "Tips(Non-Direct)"])
      return false unless earnings_type_validator.valid?(@earnings_type)
      return false if @rate_type.nil?
      rate_type_validator = EnumAttributeValidator.new('String', ["RatePerUnit", "MultipleOfOrdinaryEarningsRate", "FixedAmount"])
      return false unless rate_type_validator.valid?(@rate_type)
      return false if @type_of_units.nil?
      return false if @expense_account_id.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] earnings_type Object to be assigned
    def earnings_type=(earnings_type)
      validator = EnumAttributeValidator.new('String', ["Allowance", "Backpay", "Bonus", "Commission", "LumpSum", "OtherEarnings", "OvertimeEarnings", "RegularEarnings", "StatutoryAdoptionPay", "StatutoryAdoptionPayNonPensionable", "StatutoryBereavementPay", "StatutoryMaternityPay", "StatutoryMaternityPayNonPensionable", "StatutoryPaternityPay", "StatutoryPaternityPayNonPensionable", "StatutoryParentalBereavementPayNonPensionable", "StatutorySharedParentalPay", "StatutorySharedParentalPayNonPensionable", "StatutorySickPay", "StatutorySickPayNonPensionable", "Tips(Direct)", "Tips(Non-Direct)"])
      unless validator.valid?(earnings_type)
        fail ArgumentError, "invalid value for \"earnings_type\", must be one of #{validator.allowable_values}."
      end
      @earnings_type = earnings_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rate_type Object to be assigned
    def rate_type=(rate_type)
      validator = EnumAttributeValidator.new('String', ["RatePerUnit", "MultipleOfOrdinaryEarningsRate", "FixedAmount"])
      unless validator.valid?(rate_type)
        fail ArgumentError, "invalid value for \"rate_type\", must be one of #{validator.allowable_values}."
      end
      @rate_type = rate_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          earnings_rate_id == o.earnings_rate_id &&
          name == o.name &&
          earnings_type == o.earnings_type &&
          rate_type == o.rate_type &&
          type_of_units == o.type_of_units &&
          current_record == o.current_record &&
          expense_account_id == o.expense_account_id &&
          rate_per_unit == o.rate_per_unit &&
          multiple_of_ordinary_earnings_rate == o.multiple_of_ordinary_earnings_rate &&
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
      [earnings_rate_id, name, earnings_type, rate_type, type_of_units, current_record, expense_account_id, rate_per_unit, multiple_of_ordinary_earnings_rate, fixed_amount].hash
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
        XeroRuby::PayrollUk.const_get(type).build_from_hash(value)
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
          to_hash_value = v.to_hash(downcase: downcase)
          to_hash_value
        end
        # value.compact.map { |v| _to_hash(v) }
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
      else # handle date 'types' for small subset of payroll API's
        Time.parse(datestring).strftime('%Y-%m-%dT%H:%M:%S').to_s
      end
    end
  end
end
