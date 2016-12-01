Rails.application.routes.draw do
  namespace :admin do
    namespace :questions do
      get 'by_category_questions/index'
    end
  end

  namespace :admin do
    namespace :questions do
      get 'by_category_questions/show'
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

    # トップページ
    resources :home, only: :index

    # ◯✕正誤問題管理(年度別)
    resources :questions, param: :year_tag_id, only: :index do
      scope module: :questions do
        resources :by_year_questions, only: [:index, :show]
      end
    end

    # ◯✕正誤問題管理(分野別)
    resources :questions, param: :big_tag_id, only: :index do
      scope module: :questions do
        resources :by_category_questions, only: [:index, :show]
      end
    end

    # 過去問管理(年度別)
    resources :past_questions, param: :year_tag_id, only: :index do
      scope module: :past_questions do
        resources :by_year_past_questions, only: [:index, :show]
        #resources :by_category_past_questions, only: [:index, :show]
      end
    end

    # 過去問管理(分野別)
    #resources :past_questions, param: :big_tag_id, only: :index do
    #  scope module: :past_questions do
    #    resources :by_category_past_questions, only: [:index, :show]
    #  end
    #end

    # 用語集管理(分野別)
    resources :terminologies, param: :big_tag_id, only: :index do
      scope module: :terminologies do
        resources :by_category_terminologies, only: [:index, :show]
      end
    end

    devise_for :admin_users,
               path: :users,
               only: :sessions,
               controllers: { sessions: 'admin/admin_users/sessions' }
  end

  #mount API::Base => '/'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
