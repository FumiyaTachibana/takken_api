Rails.application.routes.draw do
  # Web側
  namespace :web, path: '/' do
    root to: 'home#index' # トップページ

    ### 過去問題集
    resources :past_questions, only: [:index, :show]

    ############################################

    ### 要点整理
    resources :organize_points, only: :index # 分野一覧（大タグ）
    namespace :organize_points, only: :index do
      # 権利関係
      resources :civil_codes, only: :index # 権利関係科目一覧（中タグ）
      namespace :civil_codes, only: :index do
        # 科目一覧
        resources :restricted_acting_capacity_persons, only: :index #do # 制限行為能力者
          #collection do
          #  get :word # 用語
          #  get :ability # 能力まとめ
          #end
        #end
        resources :agency, only: :index # 代理
        #resources :persons, only: :index # 意思表示
        #resources :persons, only: :index # 時効
        #resources :persons, only: :index # 抵当権
        #resources :persons, only: :index # 連帯債務
        #resources :persons, only: :index # 保証
        #resources :persons, only: :index # 債権譲渡
        #resources :persons, only: :index # 債務不履行
        #resources :persons, only: :index # 契約解除
        #resources :persons, only: :index # 担保責任
        #resources :persons, only: :index # 相殺
        #resources :persons, only: :index # 委任
        #resources :persons, only: :index # 敷金
        #resources :persons, only: :index # 借地借家法(借地)
        #resources :persons, only: :index # 借地借家法(借家)
        #resources :persons, only: :index # 相続
        #resources :persons, only: :index # 共有
        #resources :persons, only: :index # 区分所有法
        #resources :persons, only: :index # 物権変動
        #resources :persons, only: :index # 不動産登記法
        #resources :persons, only: :index # 不法行為
        #resources :persons, only: :index # 相隣関係
        #resources :persons, only: :index # 担保物権
      end
=begin
      # 法令上の制限
      resources :legal_restrictions, only: :index # 法令上の制限科目一覧（中タグ）
      namespace :legal_restrictions, only: :index do
        # 科目一覧
        resources :urban_planning_laws, only: :index do # 都市計画法
          #collection do
          #  get :usage_areas # 用途地域
          #end
        #end
        #resources :agency, only: :index do # 開発許可
        #resources :persons, only: :index do # 単体
        #resources :persons, only: :index do # 集合
        #resources :persons, only: :index do # 確認
        #resources :persons, only: :index do # 検査
        #resources :persons, only: :index do # 容積
        #resources :persons, only: :index do # 建ぺい率
        #resources :persons, only: :index do # 防火地域
        #resources :persons, only: :index do # 農地法
        #resources :persons, only: :index do # 国土利用計画法
        #resources :persons, only: :index do # 土地区画整理法
        #resources :persons, only: :index do # 宅地造成等規制法
      end

      # 宅建業法
      resources :real_estate_transaction_acts, only: :index # 宅建業法科目一覧（中タグ）
      namespace :real_estate_transaction_acts, only: :index do
        # 科目一覧
        resources :licenses, only: :index do # 免許
          #collection do
          #  get :disqualification_factors # 欠格要因
          #end
        #end
        #resources :agency, only: :index do # 宅建士
        #resources :persons, only: :index do # 営業保証金
        #resources :persons, only: :index do # 保証協会
        #resources :persons, only: :index do # 誇大広告等の禁止
        #resources :persons, only: :index do # 媒介契約
        #resources :persons, only: :index do # 重要事項の説明
        #resources :persons, only: :index do # 37条書面
        #resources :persons, only: :index do # 8種制限
        #resources :persons, only: :index do # 報酬
        #resources :persons, only: :index do # 監督処分
        #resources :persons, only: :index do # 住宅瑕疵担保履行法
      end

      # 税その他
      resources :tax_others, only: :index # 税その他科目一覧（中タグ）
      namespace :tax_others, only: :index do
        # 科目一覧
        resources :income_taxes, only: :index do # 所得税(譲渡所得)
          #collection do
          #  get :special_deductions # 特別控除
          #end
        #end
        #resources :agency, only: :index do # 不動産取得税
        #resources :persons, only: :index do # 登録免許税
        #resources :persons, only: :index do # 印紙税
        #resources :persons, only: :index do # 固定資産税
        #resources :persons, only: :index do # 不動産鑑定評価基準
        #resources :persons, only: :index do # 地価公示法
        #resources :persons, only: :index do # 景品表示法
        #resources :persons, only: :index do # 土地
        #resources :persons, only: :index do # 建物
        #resources :persons, only: :index do # 住宅金融支援機構法
      end
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
