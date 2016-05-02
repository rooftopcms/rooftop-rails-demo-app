if defined?(Rooftop)
  Rooftop::Rails.configure do |config|
    config.api_token = '9f488c1c749f874b07e0b9d568385af2'
    config.site_name = 'docs.demo'
    config.perform_http_response_caching = false
    config.perform_object_caching = Rails.configuration.action_controller.perform_caching
    config.resource_route_map = {
      page: ->(path, params) {Rails.application.routes.url_helpers.page_path(path, params)}
    }

    config.post_type_mapping = {
      menu: Rooftop::Menus::Menu
    }

  end
end