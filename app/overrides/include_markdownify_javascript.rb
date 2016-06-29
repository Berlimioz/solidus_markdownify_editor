Deface::Override.new(
  virtual_path:   'spree/layouts/admin',
  name:           'include_markdownify_javascript',
  insert_bottom:  '[data-hook="admin_footer_scripts"]',
  text:           '<%= render partial: "shared/markdownify_editor_javascript" %>'
)
