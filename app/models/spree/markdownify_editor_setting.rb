module Spree
  class MarkdownifyEditorSetting < Preferences::Configuration
    preference :enabled,        :boolean, default: true
    preference :ids,            :string,  default: 'product_description page_body'
  end
end
