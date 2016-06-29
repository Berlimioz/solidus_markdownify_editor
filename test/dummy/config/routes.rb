Rails.application.routes.draw do

  mount SolidusMarkdownifyEditor::Engine => "/solidus_markdownify_editor"

  root "welcome#home"

end
