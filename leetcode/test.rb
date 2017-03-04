module Schemas
  module V1
    module Contract
      class FulfillmentOptionSchema
        class << self
          def create_or_update_params(schema)
            base_attributes(schema)
          end

          def full_response(schema)
            base_attributes(schema)
          end

          private

          def base_attributes(fulfillment_option)
            fulfillment_option.number :discountAllowance, description: "Negotiated discount allowance for the contract"
            fulfillment_option.number :freightAllowance, description: "Negotiated freight allowance for the contract"
            fulfillment_option.object :lumpSumCoOp, description: "Lump sum co op" do |lump_sum_co_op|
              lump_sum_co_op.integer :amount, "The sell price, in minor units"
              lump_sum_co_op.string :currencyCode, "The ISO 4217 currency code", minLength: 3, maxLength: 3
            end
            fulfillment_option.integer :purchasabilityRegionId, description: "Purchasability region of the contract"
            fulfillment_option.integer :shippingSla, description: "Maximum shipping sla for fulfillment"
            fulfillment_option.number :coOpPercentage, description: "Co op percentage"
            fulfillment_option.string :fulfillmentMethod, description: "Fulfillment method of the contract"
            fulfillment_option.string :fulfillmentProvider, description: "Fulfillment provider of the contract"
            fulfillment_option.string :id, format: :uuid
            fulfillment_option.string :paymentTerms, description: "Payment terms of the contract"
          end
        end
      end
    end
  end
end

puts [10, 100].max
puts (100 - 200).abs