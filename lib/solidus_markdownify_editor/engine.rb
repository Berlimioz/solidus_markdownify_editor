module SolidusMarkdownifyEditor

  class MyRailtie < Rails::Railtie
  end

  class Engine < ::Rails::Engine
    isolate_namespace Spree
    engine_name 'solidus_markdownify_editor'

    initializer 'solidus_markdownify_editor.preferences', before: :load_config_initializers do
      SpreeEditor::Config = Spree::MarkdownifyEditorSetting.new

      # if Spree::Config.has_preference? :show_raw_product_description
      #   Spree::Config[:show_raw_product_description] = SpreeEditor::Config[:enabled]
      # end
    end

    initializer "solidus_markdownify_editor.assets" do |config|
      Rails.application.config.assets.precompile += %w(spree/solidus_markdownify_editor.js spree/backend/solidus_markdownify_editor.css)
    end

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      cache_klasses = %W(#{config.root}/app/**/*_decorator*.rb)
      Dir.glob(cache_klasses) do |klass|
        Rails.configuration.cache_classes ? require(klass) : load(klass)
      end
    end

    config.to_prepare(&method(:activate).to_proc)

  end

end
