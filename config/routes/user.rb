scope module: :user_pc, as: 'user_pc' do
  resources 'books', only: [:index, :show]
end
