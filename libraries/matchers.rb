if defined?(ChefSpec)
  def add_nginx_site(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:nginx_site, :create, resource_name)
  end

  def remove_nginx_site(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:nginx_site, :delete, resource_name)
  end

  def enable_nginx_site(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:nginx_site, :enable, resource_name)
  end

  def disable_nginx_site(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:nginx_site, :disable, resource_name)
  end

  def enable_nginx_logrotate_template(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:nginx_logrotate_template, :enable, resource_name)
  end

  def disable_nginx_logrotate_template(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:nginx_logrotate_template, :disable, resource_name)
  end

  def run_nginx_cleanup(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:nginx_cleanup, :run, resource_name)
  end

  def disable_nginx_cleanup(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:nginx_cleanup, :disable, resource_name)
  end
end
