module Spree
  module Admin
    class MarkdownifyEditorSettingsController < ResourceController
      def update
        config = Spree::MarkdownifyEditorSetting.new
        preferences = params && params.key?(:preferences) ? params.delete(:preferences) : params
        preferences.each do |name, value|
          next unless config.has_preference? name
          config[name] = value
        end
        flash[:success] = Spree.t(:successfully_updated, resource: Spree.t(:markdownify_editor))
        redirect_to edit_admin_markdownify_editor_settings_path
      end
    end
  end
end
