RailsAdmin.config do |config|
  config.included_models = ["User", "Tip", "TipLocale"]
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    show
    edit
    delete
  end
end
