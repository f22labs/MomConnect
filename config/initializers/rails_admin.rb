RailsAdmin.config do |config|

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    # export
    # bulk_delete
    show
    edit
    delete
    # show_in_app
  end
end
