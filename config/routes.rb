Rails.application.routes.draw do
  resources :students
  resources :enrollments, only: [:new, :create, :destroy]

  root 'students#index'
  post 'student/image/.url' => 'student#image'
  #post 'students/:id/edit' => 'students#update'
  get 'students/destroy'
end
