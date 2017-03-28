require 'active_record'

class DynamicUniquenessValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, options[:message] || :taken) if record.public_send(options[:parent_association]).public_send(options[:child_association]).any? { |item| item != record && value == item.read_attribute(attribute) }
  end
end
