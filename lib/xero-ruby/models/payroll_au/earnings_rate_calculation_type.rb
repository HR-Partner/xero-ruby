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
  class EarningsRateCalculationType
    USEEARNINGSRATE ||= "USEEARNINGSRATE".freeze
    ENTEREARNINGSRATE ||= "ENTEREARNINGSRATE".freeze
    ANNUALSALARY ||= "ANNUALSALARY".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = EarningsRateCalculationType.constants.select { |c| EarningsRateCalculationType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #EarningsRateCalculationType" if constantValues.empty?
      value
    end
  end
end
