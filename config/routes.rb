class SubdomainConstraint
  def self.matches?(request)
    request.subdomain.present? && request.subdomain != 'www'
  end
end

Rails.application.routes.draw do
  constraints SubdomainConstraint do
    resources :projects
  end

  resources :users
end
