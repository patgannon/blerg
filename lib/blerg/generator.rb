module Blerg
  class Generator
    def initialize(vars)
      @vars = vars
    end

    def generate(templates)
      templates.map do |template_text|
        @vars.each do |var_name, var_value|
          instance_variable_set "@#{var_name}", var_value
        end

        template = ERB.new template_text
        template.result(binding)
      end
    end
  end
end
