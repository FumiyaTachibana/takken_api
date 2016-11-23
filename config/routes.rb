Rails.application.routes.draw do
  namespace :web do
    namespace :organize_points do
      namespace :civil_codes do
        get 'restricted_acting_capacity_persons/index'
      end
    end
  end

  # ウェブ側
  namespace :web, path: '/' do
    root to: 'home#index' # トップページ

    ### 過去問題集
    resources :past_questions, only: [:index, :show]

    ############################################

    ### 要点整理
    resources :organize_points, only: :index # 分野一覧（大タグ）
    namespace :organize_points, only: :index do
      # 権利関係
      resources :civil_codes, only: :index # 科目一覧（中タグ）
      namespace :civil_codes, only: :index do
        # 制限行為能力者
        resources :restricted_acting_capacity_persons, only: :index do
          collection do # 制限行為能力者の中の説明
            get :word # 用語
            get :ability # 能力まとめ
          end
        end
        # 代理
        #resources :restricted_acting_capacity_persons, only: :index do
        #  collection do # 代理の中の説明
        #    get :word # 用語
        #    get :ability # 能力まとめ
        #  end
        #end
        # 意思表示
        #resources :restricted_acting_capacity_persons, only: :index do
        # 時効
        #resources :restricted_acting_capacity_persons, only: :index do
        # 抵当権
        #resources :restricted_acting_capacity_persons, only: :index do
        # 連帯責任
        #resources :restricted_acting_capacity_persons, only: :index do
        #...
      end
=begin
      # 法令上の制限
      #resources :legal_restrictions, only: :index # 科目一覧（中タグ）
      #namespace :legal_restrictions, only: :index do
        ### 科目一覧
        resources :urban_planning_laws, only: :index do # 都市計画法
          collection do
            get :usage_areas # 用途地域
          end
        end
      #end

      # 宅建業法
      #resources :real_estate_transaction_acts, only: :index # 科目一覧（中タグ）
      #namespace :real_estate_transaction_acts, only: :index do
        ### 科目一覧
        resources :licenses, only: :index do # 免許
          collection do
            get :disqualification_factors # 欠格要因
          end
        end
      #end


      # 税その他
      #resources :tax_and_others, only: :index # 科目一覧（中タグ）
      #namespace :tax_and_others, only: :index do
        ### 科目一覧
        resources :income_taxes, only: :index do # 所得税
          collection do
            get :special_deductions # 特別控除
          end
        end
      #end
=end
    end

    ### 用語集
    resources :terminologies, only: [:index, :show]
  end

########################################################################

  # 管理側
  namespace :admin do
    root to: 'home#index'

    resources :home, only: :index # トップページ
    resources :quizzes, only: :index # ◯✕正誤問題管理
    resources :past_questions, only: :index # 過去問題集管理

    devise_for :admin_users,
               path: :users,
               only: :sessions,
               controllers: { sessions: 'admin/admin_users/sessions' }
  end

  #mount API::Base => '/'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
