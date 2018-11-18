class DynamicMath
	OPERATIONS = {
		plus: '+',
		minus: '-',
		devide: '/',
		multiple: '*'
	}.freeze

	attr_accessor :a, :b

	def initialize(a, b)
		self.a = a.to_f
		self.b = b.to_f
	end

	def self.operation?(operation)
		has_operation = OPERATIONS.key? operation.to_sym
		raise "[ERROR]: Incorrect operation '#{operation}'" unless has_operation
	end
end
