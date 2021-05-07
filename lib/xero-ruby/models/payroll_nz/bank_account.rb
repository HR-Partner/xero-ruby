=begin
#Xero Payroll NZ

#This is the Xero Payroll API for orgs in the NZ region.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollNz
  require 'bigdecimal'

  class BankAccount
    # Bank account name (max length = 32)
    attr_accessor :account_name
    
    # Bank account number (digits only; max length = 8)
    attr_accessor :account_number
    
    # Bank account sort code (6 digits)
    attr_accessor :sort_code
    
    # Particulars that appear on the statement.
    attr_accessor :particulars
    
    # Code of a transaction that appear on the statement.
    attr_accessor :code
    
    # Dollar amount of a transaction.
    attr_accessor :dollar_amount
    
    # Statement Text/reference for a transaction that appear on the statement.
    attr_accessor :reference
    
    # Calculation type for the transaction can be 'Fixed Amount' or 'Balance'
    attr_accessor :calculation_type
    FIXED_AMOUNT = "FixedAmount".freeze
    BALANCE = "Balance".freeze
    
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
        :'account_name' => :'accountName',
        :'account_number' => :'accountNumber',
        :'sort_code' => :'sortCode',
        :'particulars' => :'particulars',
        :'code' => :'code',
        :'dollar_amount' => :'dollarAmount',
        :'reference' => :'reference',
        :'calculation_type' => :'calculationType'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_name' => :'String',
        :'account_number' => :'String',
        :'sort_code' => :'String',
        :'particulars' => :'String',
        :'code' => :'String',
        :'dollar_amount' => :'BigDecimal',
        :'reference' => :'String',
        :'calculation_type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollNz::BankAccount` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollNz::BankAccount`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_name')
        self.account_name = attributes[:'account_name']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'sort_code')
        self.sort_code = attributes[:'sort_code']
      end

      if attributes.key?(:'particulars')
        self.particulars = attributes[:'particulars']
      end

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'dollar_amount')
        self.dollar_amount = attributes[:'dollar_amount']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'calculation_type')
        self.calculation_type = attributes[:'calculation_type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @account_name.nil?
        invalid_properties.push('invalid value for "account_name", account_name cannot be nil.')
      end

      if @account_number.nil?
        invalid_properties.push('invalid value for "account_number", account_number cannot be nil.')
      end

      if @sort_code.nil?
        invalid_properties.push('invalid value for "sort_code", sort_code cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_name.nil?
      return false if @account_number.nil?
      return false if @sort_code.nil?
      calculation_type_validator = EnumAttributeValidator.new('String', ["FixedAmount", "Balance"])
      return false unless calculation_type_validator.valid?(@calculation_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] calculation_type Object to be assigned
    def calculation_type=(calculation_type)
      validator = EnumAttributeValidator.new('String', ["FixedAmount", "Balance"])
      unless validator.valid?(calculation_type)
        fail ArgumentError, "invalid value for \"calculation_type\", must be one of #{validator.allowable_values}."
      end
      @calculation_type = calculation_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_name == o.account_name &&
          account_number == o.account_number &&
          sort_code == o.sort_code &&
          particulars == o.particulars &&
          code == o.code &&
          dollar_amount == o.dollar_amount &&
          reference == o.reference &&
          calculation_type == o.calculation_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_name, account_number, sort_code, particulars, code, dollar_amount, reference, calculation_type].hash
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
        XeroRuby::PayrollNz.const_get(type).build_from_hash(value)
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
        puts "1 ***********"
        puts "attr: #{attr}"
        puts "param: #{param}"
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
          binding.pry
          value.map { |k, v| hash[k] = _to_hash(v, downcase: downcase) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

    # def deplurarlized_model_name_from(param)
    #   n = param.length
    #   case param
    #   when 'Addresses'
    #     'Address'
    #   when 'TrackingCategories'
    #     'TrackingCategory'
    #   else
    #     puts "param -> #{param}"
    #     puts "param[0..n-2] -> #{param[0..n-2]}"
    #     puts "********************************"
    #     param[0..n-2]
    #   end
    # end

    def parse_date(datestring)
      if datestring.include?('Date')
        seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
        Time.at(seconds_since_epoch).utc.strftime('%Y-%m-%dT%H:%M:%S%z').to_s
      else # handle date 'types' for small subset of payroll API's
        Time.parse(datestring).strftime('%Y-%m-%dT%H:%M:%S').to_s
      end
    end
  end
end
