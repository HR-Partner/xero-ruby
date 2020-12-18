=begin
#Xero Payroll NZ

#This is the Xero Payroll API for orgs in the NZ region.

The version of the OpenAPI document: 2.8.0
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollNz
  require 'bigdecimal'

  class EmployeeTax
    # The IRD Number.
    attr_accessor :ird_number
    

    attr_accessor :tax_code
    
    # Special tax rate percentage.
    attr_accessor :special_tax_rate_percentage
    
    # Does the employee has a special student loan rate?
    attr_accessor :has_special_student_loan_rate
    
    # The employee student loan rate percentage.
    attr_accessor :special_student_loan_rate_percentage
    
    # The employee eligibility for KiwiSaver.
    attr_accessor :is_eligible_for_kiwi_saver
    
    # Employer superannuation contribution tax rate.
    attr_accessor :esct_rate_percentage
    
    # Contribution Option which can be 'MakeContributions' 'OptOut', 'OnAContributionsHoliday', 'OnASavingsSuspension', 'NotCurrentlyAKiwiSaverMember' for employees without a KiwiSaver membership
    attr_accessor :kiwi_saver_contributions
    MAKE_CONTRIBUTIONS = "MakeContributions".freeze
    OPT_OUT = "OptOut".freeze
    ON_A_CONTRIBUTIONS_HOLIDAY = "OnAContributionsHoliday".freeze
    ON_A_SAVINGS_SUSPENSION = "OnASavingsSuspension".freeze
    NOT_CURRENTLY_A_KIWI_SAVER_MEMBER = "NotCurrentlyAKiwiSaverMember".freeze
    
    # Employee Contribution percentage.
    attr_accessor :kiwi_saver_employee_contribution_rate_percentage
    
    # Employer Contribution percentage.
    attr_accessor :kiwi_saver_employer_contribution_rate_percentage
    
    # Employer Contribution through Salary Sacrifice percentage.
    attr_accessor :kiwi_saver_employer_salary_sacrifice_contribution_rate_percentage
    
    # Opt Out Date.
    attr_accessor :kiwi_saver_opt_out_date
    
    # Contribution holiday expiry date or end date.
    attr_accessor :kiwi_saver_contribution_holiday_end_date
    
    # Does the employee have a remaining student loan balance? Set a remaining balance if you have received a letter from IR.
    attr_accessor :has_student_loan_balance
    
    # The employee's student loan balance shown on the letter from IR.
    attr_accessor :student_loan_balance
    
    # The date of the letter from IR.
    attr_accessor :student_loan_as_at
    
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
        :'ird_number' => :'irdNumber',
        :'tax_code' => :'taxCode',
        :'special_tax_rate_percentage' => :'specialTaxRatePercentage',
        :'has_special_student_loan_rate' => :'hasSpecialStudentLoanRate',
        :'special_student_loan_rate_percentage' => :'specialStudentLoanRatePercentage',
        :'is_eligible_for_kiwi_saver' => :'isEligibleForKiwiSaver',
        :'esct_rate_percentage' => :'esctRatePercentage',
        :'kiwi_saver_contributions' => :'kiwiSaverContributions',
        :'kiwi_saver_employee_contribution_rate_percentage' => :'kiwiSaverEmployeeContributionRatePercentage',
        :'kiwi_saver_employer_contribution_rate_percentage' => :'kiwiSaverEmployerContributionRatePercentage',
        :'kiwi_saver_employer_salary_sacrifice_contribution_rate_percentage' => :'kiwiSaverEmployerSalarySacrificeContributionRatePercentage',
        :'kiwi_saver_opt_out_date' => :'kiwiSaverOptOutDate',
        :'kiwi_saver_contribution_holiday_end_date' => :'kiwiSaverContributionHolidayEndDate',
        :'has_student_loan_balance' => :'hasStudentLoanBalance',
        :'student_loan_balance' => :'studentLoanBalance',
        :'student_loan_as_at' => :'studentLoanAsAt'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ird_number' => :'String',
        :'tax_code' => :'TaxCode',
        :'special_tax_rate_percentage' => :'BigDecimal',
        :'has_special_student_loan_rate' => :'Boolean',
        :'special_student_loan_rate_percentage' => :'BigDecimal',
        :'is_eligible_for_kiwi_saver' => :'Boolean',
        :'esct_rate_percentage' => :'BigDecimal',
        :'kiwi_saver_contributions' => :'String',
        :'kiwi_saver_employee_contribution_rate_percentage' => :'BigDecimal',
        :'kiwi_saver_employer_contribution_rate_percentage' => :'BigDecimal',
        :'kiwi_saver_employer_salary_sacrifice_contribution_rate_percentage' => :'BigDecimal',
        :'kiwi_saver_opt_out_date' => :'Date',
        :'kiwi_saver_contribution_holiday_end_date' => :'Date',
        :'has_student_loan_balance' => :'Boolean',
        :'student_loan_balance' => :'BigDecimal',
        :'student_loan_as_at' => :'Date'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollNz::EmployeeTax` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollNz::EmployeeTax`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ird_number')
        self.ird_number = attributes[:'ird_number']
      end

      if attributes.key?(:'tax_code')
        self.tax_code = attributes[:'tax_code']
      end

      if attributes.key?(:'special_tax_rate_percentage')
        self.special_tax_rate_percentage = attributes[:'special_tax_rate_percentage']
      end

      if attributes.key?(:'has_special_student_loan_rate')
        self.has_special_student_loan_rate = attributes[:'has_special_student_loan_rate']
      end

      if attributes.key?(:'special_student_loan_rate_percentage')
        self.special_student_loan_rate_percentage = attributes[:'special_student_loan_rate_percentage']
      end

      if attributes.key?(:'is_eligible_for_kiwi_saver')
        self.is_eligible_for_kiwi_saver = attributes[:'is_eligible_for_kiwi_saver']
      end

      if attributes.key?(:'esct_rate_percentage')
        self.esct_rate_percentage = attributes[:'esct_rate_percentage']
      end

      if attributes.key?(:'kiwi_saver_contributions')
        self.kiwi_saver_contributions = attributes[:'kiwi_saver_contributions']
      end

      if attributes.key?(:'kiwi_saver_employee_contribution_rate_percentage')
        self.kiwi_saver_employee_contribution_rate_percentage = attributes[:'kiwi_saver_employee_contribution_rate_percentage']
      end

      if attributes.key?(:'kiwi_saver_employer_contribution_rate_percentage')
        self.kiwi_saver_employer_contribution_rate_percentage = attributes[:'kiwi_saver_employer_contribution_rate_percentage']
      end

      if attributes.key?(:'kiwi_saver_employer_salary_sacrifice_contribution_rate_percentage')
        self.kiwi_saver_employer_salary_sacrifice_contribution_rate_percentage = attributes[:'kiwi_saver_employer_salary_sacrifice_contribution_rate_percentage']
      end

      if attributes.key?(:'kiwi_saver_opt_out_date')
        self.kiwi_saver_opt_out_date = attributes[:'kiwi_saver_opt_out_date']
      end

      if attributes.key?(:'kiwi_saver_contribution_holiday_end_date')
        self.kiwi_saver_contribution_holiday_end_date = attributes[:'kiwi_saver_contribution_holiday_end_date']
      end

      if attributes.key?(:'has_student_loan_balance')
        self.has_student_loan_balance = attributes[:'has_student_loan_balance']
      end

      if attributes.key?(:'student_loan_balance')
        self.student_loan_balance = attributes[:'student_loan_balance']
      end

      if attributes.key?(:'student_loan_as_at')
        self.student_loan_as_at = attributes[:'student_loan_as_at']
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
      kiwi_saver_contributions_validator = EnumAttributeValidator.new('String', ["MakeContributions", "OptOut", "OnAContributionsHoliday", "OnASavingsSuspension", "NotCurrentlyAKiwiSaverMember"])
      return false unless kiwi_saver_contributions_validator.valid?(@kiwi_saver_contributions)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] kiwi_saver_contributions Object to be assigned
    def kiwi_saver_contributions=(kiwi_saver_contributions)
      validator = EnumAttributeValidator.new('String', ["MakeContributions", "OptOut", "OnAContributionsHoliday", "OnASavingsSuspension", "NotCurrentlyAKiwiSaverMember"])
      unless validator.valid?(kiwi_saver_contributions)
        fail ArgumentError, "invalid value for \"kiwi_saver_contributions\", must be one of #{validator.allowable_values}."
      end
      @kiwi_saver_contributions = kiwi_saver_contributions
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ird_number == o.ird_number &&
          tax_code == o.tax_code &&
          special_tax_rate_percentage == o.special_tax_rate_percentage &&
          has_special_student_loan_rate == o.has_special_student_loan_rate &&
          special_student_loan_rate_percentage == o.special_student_loan_rate_percentage &&
          is_eligible_for_kiwi_saver == o.is_eligible_for_kiwi_saver &&
          esct_rate_percentage == o.esct_rate_percentage &&
          kiwi_saver_contributions == o.kiwi_saver_contributions &&
          kiwi_saver_employee_contribution_rate_percentage == o.kiwi_saver_employee_contribution_rate_percentage &&
          kiwi_saver_employer_contribution_rate_percentage == o.kiwi_saver_employer_contribution_rate_percentage &&
          kiwi_saver_employer_salary_sacrifice_contribution_rate_percentage == o.kiwi_saver_employer_salary_sacrifice_contribution_rate_percentage &&
          kiwi_saver_opt_out_date == o.kiwi_saver_opt_out_date &&
          kiwi_saver_contribution_holiday_end_date == o.kiwi_saver_contribution_holiday_end_date &&
          has_student_loan_balance == o.has_student_loan_balance &&
          student_loan_balance == o.student_loan_balance &&
          student_loan_as_at == o.student_loan_as_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ird_number, tax_code, special_tax_rate_percentage, has_special_student_loan_rate, special_student_loan_rate_percentage, is_eligible_for_kiwi_saver, esct_rate_percentage, kiwi_saver_contributions, kiwi_saver_employee_contribution_rate_percentage, kiwi_saver_employer_contribution_rate_percentage, kiwi_saver_employer_salary_sacrifice_contribution_rate_percentage, kiwi_saver_opt_out_date, kiwi_saver_contribution_holiday_end_date, has_student_loan_balance, student_loan_balance, student_loan_as_at].hash
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
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

    # customized data_parser
    def parse_date(datestring)
      seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
      return Time.at(seconds_since_epoch).strftime('%Y-%m-%dT%l:%M:%S%z').to_s
    end
  end
end
