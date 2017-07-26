scope module: :user_pc, as: 'user_pc' do
  resources 'books', only: [:index]
  resources 'activities', only: [:index]
end
