Spree::Core::Engine.add_routes do
  namespace :admin do
    resource :markdownify_editor_settings, only: [:edit, :update]
  end
end
