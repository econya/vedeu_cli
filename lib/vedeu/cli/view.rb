module Vedeu

  module CLI

    # Generates a view for the client application.
    #
    # @example
    #   ```bash
    #   vedeu view main_screen
    #   ```
    #
    # :nocov:
    class View

      include Vedeu::CLI::Helpers

      # @see Vedeu::CLI::View#initialize
      def self.generate(name)
        new(name).generate
      end

      # Returns a new instance of Vedeu::CLI::View.
      #
      # @param name [String] The name of the view.
      # @return [Vedeu::CLI::View]
      def initialize(name)
        @name = name
      end

      # @return [void]
      def generate
        make_controller_file
        make_helper_file
        make_keymap_file
        make_interface_file
        make_template_file
        make_view_class_file

        output("Please update the 'root' setting in 'config/configuration.rb'" \
               " to '#{app_name}::#{name_as_class}Controller.new' to start " \
               'Vedeu at this controller.')
      end

      private

      # @return [void]
      def make_controller_file
        make_file(source + '/app/controllers/name.erb',
                  '.' + "/app/controllers/#{name}_controller.rb")
      end

      # @return [void]
      def make_helper_file
        make_file(source + '/app/helpers/name.erb',
                  '.' + "/app/helpers/#{name}_helper.rb")
      end

      # @return [void]
      def make_keymap_file
        make_file(source + '/app/models/keymaps/name.erb',
                  '.' + "/app/models/keymaps/#{name}.rb")
      end

      # @return [void]
      def make_interface_file
        make_file(source + '/app/views/interfaces/name.erb',
                  '.' + "/app/views/interfaces/#{name}.rb")
      end

      # @return [void]
      def make_template_file
        touch_file('.' + "/app/views/templates/#{name}.erb")
      end

      # @return [void]
      def make_view_class_file
        make_file(source + '/app/views/name.erb',
                  '.' + "/app/views/#{name}.rb")
      end

    end # View
    # :nocov:

  end # CLI

end # Vedeu
