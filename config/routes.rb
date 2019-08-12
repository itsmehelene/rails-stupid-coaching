Rails.application.routes.draw do
  get 'questions/ask', to: 'questions#ask'
  get '/answer', to: 'questions#answer'
end
