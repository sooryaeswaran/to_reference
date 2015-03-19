require 'active_support/concern'

module ToReference
  	extend ActiveSupport::Concern

	included do
		class_eval do
			def self.defining_method(dup_method, method, i_method)
				define_any_method(dup_method, method, i_method)
			end

			def self.define_any_method(dup_method, method, i_method)
				if i_method
					define_method(dup_method, instance_method(method)) {|*params|}
				else
					define_singleton_method(dup_method, method(method)) {|*params|}
				end
			end
		end
	end

	module ClassMethods
		def reference(*methods)
			methods.each do |method|
				dup_method = get_dup_method(method)
				i_method = self.instance_methods.include?(method)
				defining_method(dup_method, method, i_method)
				redefine_method(method, i_method) { |*params| method(dup_method) }
			end
		end

		def redefine_method(method, i_method, &block)
			remove_possible_method(method)
			i_method ? define_method(method, &block) : define_singleton_method(method, &block)
		end

		def get_dup_method(method)
			(method.to_s + rand.to_s).gsub(".","").to_sym
		end

		def remove_possible_method(method)
			remove_method(method)
			rescue NameError
		end
	end
end