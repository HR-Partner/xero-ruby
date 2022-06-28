=begin
#Xero Payroll NZ

#This is the Xero Payroll API for orgs in the NZ region.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'time'
require 'date'

module XeroRuby::PayrollNz
  require 'bigdecimal'

  class PayRunCalendar
    # Xero unique identifier for the payroll calendar
    attr_accessor :payroll_calendar_id
    
    # Name of the calendar
    attr_accessor :name
    

    attr_accessor :calendar_type
    
    # Period start date of the calendar
    attr_accessor :period_start_date
    
    # Period end date of the calendar
    attr_accessor :period_end_date
    
    # Payment date of the calendar
    attr_accessor :payment_date
    
    # UTC timestamp of the last update to the pay run calendar
    attr_accessor :updated_date_utc
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'payroll_calendar_id' => :'payrollCalendarID',
        :'name' => :'name',
        :'calendar_type' => :'calendarType',
        :'period_start_date' => :'periodStartDate',
        :'period_end_date' => :'periodEndDate',
        :'payment_date' => :'paymentDate',
        :'updated_date_utc' => :'updatedDateUTC'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'payroll_calendar_id' => :'String',
        :'name' => :'String',
        :'calendar_type' => :'CalendarType',
        :'period_start_date' => :'Date',
        :'period_end_date' => :'Date',
        :'payment_date' => :'Date',
        :'updated_date_utc' => :'Time'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollNz::PayRunCalendar` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollNz::PayRunCalendar`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payroll_calendar_id')
        self.payroll_calendar_id = attributes[:'payroll_calendar_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'calendar_type')
        self.calendar_type = attributes[:'calendar_type']
      end

      if attributes.key?(:'period_start_date')
        self.period_start_date = attributes[:'period_start_date']
      end

      if attributes.key?(:'period_end_date')
        self.period_end_date = attributes[:'period_end_date']
      end

      if attributes.key?(:'payment_date')
        self.payment_date = attributes[:'payment_date']
      end

      if attributes.key?(:'updated_date_utc')
        self.updated_date_utc = attributes[:'updated_date_utc']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @calendar_type.nil?
        invalid_properties.push('invalid value for "calendar_type", calendar_type cannot be nil.')
      end

      if @period_start_date.nil?
        invalid_properties.push('invalid value for "period_start_date", period_start_date cannot be nil.')
      end

      if @payment_date.nil?
        invalid_properties.push('invalid value for "payment_date", payment_date cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @calendar_type.nil?
      return false if @period_start_date.nil?
      return false if @payment_date.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          payroll_calendar_id == o.payroll_calendar_id &&
          name == o.name &&
          calendar_type == o.calendar_type &&
          period_start_date == o.period_start_date &&
          period_end_date == o.period_end_date &&
          payment_date == o.payment_date &&
          updated_date_utc == o.updated_date_utc
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payroll_calendar_id, name, calendar_type, period_start_date, period_end_date, payment_date, updated_date_utc].hash
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
