module Kpckara
  class App < Padrino::Application
    register ScssInitializer
    use ConnectionPoolManagement
    register Padrino::Mailer
    register Padrino::Helpers

    enable :sessions

    # トップページ
    get '/' do
      erb :top, :layout => :default
    end

  end
end
