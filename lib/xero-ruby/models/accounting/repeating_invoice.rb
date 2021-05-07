=begin
#Xero Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Accounting
  require 'bigdecimal'

  class RepeatingInvoice
    # See Invoice Types
    attr_accessor :type
    ACCPAY = "ACCPAY".freeze
    ACCREC = "ACCREC".freeze
    

    attr_accessor :contact
    

    attr_accessor :schedule
    
    # See LineItems
    attr_accessor :line_items
    

    attr_accessor :line_amount_types
    
    # ACCREC only – additional reference number
    attr_accessor :reference
    
    # See BrandingThemes
    attr_accessor :branding_theme_id
    

    attr_accessor :currency_code
    
    # One of the following - DRAFT or AUTHORISED – See Invoice Status Codes
    attr_accessor :status
    DRAFT = "DRAFT".freeze
    AUTHORISED = "AUTHORISED".freeze
    DELETED = "DELETED".freeze
    
    # Total of invoice excluding taxes
    attr_accessor :sub_total
    
    # Total tax on invoice
    attr_accessor :total_tax
    
    # Total of Invoice tax inclusive (i.e. SubTotal + TotalTax)
    attr_accessor :total
    
    # Xero generated unique identifier for repeating invoice template
    attr_accessor :repeating_invoice_id
    
    # Xero generated unique identifier for repeating invoice template
    attr_accessor :id
    
    # boolean to indicate if an invoice has an attachment
    attr_accessor :has_attachments
    
    # Displays array of attachments from the API
    attr_accessor :attachments
    
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
        :'type' => :'Type',
        :'contact' => :'Contact',
        :'schedule' => :'Schedule',
        :'line_items' => :'LineItems',
        :'line_amount_types' => :'LineAmountTypes',
        :'reference' => :'Reference',
        :'branding_theme_id' => :'BrandingThemeID',
        :'currency_code' => :'CurrencyCode',
        :'status' => :'Status',
        :'sub_total' => :'SubTotal',
        :'total_tax' => :'TotalTax',
        :'total' => :'Total',
        :'repeating_invoice_id' => :'RepeatingInvoiceID',
        :'id' => :'ID',
        :'has_attachments' => :'HasAttachments',
        :'attachments' => :'Attachments'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'contact' => :'Contact',
        :'schedule' => :'Schedule',
        :'line_items' => :'Array<LineItem>',
        :'line_amount_types' => :'LineAmountTypes',
        :'reference' => :'String',
        :'branding_theme_id' => :'String',
        :'currency_code' => :'CurrencyCode',
        :'status' => :'String',
        :'sub_total' => :'BigDecimal',
        :'total_tax' => :'BigDecimal',
        :'total' => :'BigDecimal',
        :'repeating_invoice_id' => :'String',
        :'id' => :'String',
        :'has_attachments' => :'Boolean',
        :'attachments' => :'Array<Attachment>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Accounting::RepeatingInvoice` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Accounting::RepeatingInvoice`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.key?(:'schedule')
        self.schedule = attributes[:'schedule']
      end

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.key?(:'line_amount_types')
        self.line_amount_types = attributes[:'line_amount_types']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'branding_theme_id')
        self.branding_theme_id = attributes[:'branding_theme_id']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'sub_total')
        self.sub_total = attributes[:'sub_total']
      end

      if attributes.key?(:'total_tax')
        self.total_tax = attributes[:'total_tax']
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.key?(:'repeating_invoice_id')
        self.repeating_invoice_id = attributes[:'repeating_invoice_id']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'has_attachments')
        self.has_attachments = attributes[:'has_attachments']
      else
        self.has_attachments = false
      end

      if attributes.key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      type_validator = EnumAttributeValidator.new('String', ["ACCPAY", "ACCREC"])
      return false unless type_validator.valid?(@type)
      status_validator = EnumAttributeValidator.new('String', ["DRAFT", "AUTHORISED", "DELETED"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["ACCPAY", "ACCREC"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["DRAFT", "AUTHORISED", "DELETED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          contact == o.contact &&
          schedule == o.schedule &&
          line_items == o.line_items &&
          line_amount_types == o.line_amount_types &&
          reference == o.reference &&
          branding_theme_id == o.branding_theme_id &&
          currency_code == o.currency_code &&
          status == o.status &&
          sub_total == o.sub_total &&
          total_tax == o.total_tax &&
          total == o.total &&
          repeating_invoice_id == o.repeating_invoice_id &&
          id == o.id &&
          has_attachments == o.has_attachments &&
          attachments == o.attachments
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, contact, schedule, line_items, line_amount_types, reference, branding_theme_id, currency_code, status, sub_total, total_tax, total, repeating_invoice_id, id, has_attachments, attachments].hash
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
        XeroRuby::Accounting.const_get(type).build_from_hash(value)
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
