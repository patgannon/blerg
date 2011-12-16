# Blerg

Blerg is designed to take the headache out of boilerplate code.
Just write up an ERB template for the boilerplate and pass variables into it on the command line.

## Using

Blerg can be used directly from from the command line, or can be invoked by your own ruby scripts.
The first step is to install the gem:

    gem install blerg

### Command line

Create an ERB template file for the boilerplate you'd like to generate, like the following:

    class <%= @foo %> {
      public int id;
      public String name;
    
      public <% @foo %>(int id, String name) {
        this.id = id;
        this.name = name;
      }
    }

Now run the blerg against your template, specifying the value you'd like to use for @foo (where mytemplate.erb is the file you created above)

    blerg mytemplate.erb foo Bar

Blerg will execute the template with the substitutions made, and you would get the following

    class Bar {
      public int id;
      public String name;

      public Bar(int id, String name) {
        this.id = id;
        this.name = name;
      }
    }

### In your ruby script

You can also invoke Blerg in your own ruby scripts, as in the following examples:

    require 'rubygems'
    require 'blerg'

    generator = Blerg::Generator.new(:name => "Pat")
    outputs = generator.generate(["Hello, my name is <%= @name %>"])

Calling Blerg in this way provides a bit more flexibility.  You can invoke multiple templates using the same set of variables, and your templates don't need to be defined in a file.

## Advanced Usage

Blerg depends on ActiveSupport, so you can use inflection methods like camelcase and underscore to handle common differences between naming conventions in DBs and those in programming languages, eg <%= @foo.underscore %>. For a list of all these methods, see: http://as.rubyonrails.org/classes/ActiveSupport/CoreExtensions/String/Inflections.html 

In ERB you can define variables, or even methods to make your templates as sophisticated as you'd like. You can read more about ERB here: http://www.ruby-doc.org/stdlib-1.9.3/libdoc/erb/rdoc/ERB.html
