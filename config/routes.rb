Rails.application.routes.draw do
  resources :line_items
  resources :offers do
    member do
      put 'acceptOffer'
      put 'rejectOffer'
    end
  end
end
