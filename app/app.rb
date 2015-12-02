module Kpckara
  class App < Padrino::Application
    register ScssInitializer
    use ConnectionPoolManagement
    register Padrino::Mailer
    register Padrino::Helpers

    enable :sessions

    before do
      @app_config = settings.config
    end

    # トップページ
    get '/' do
      erb :top, :layout => :default
    end

  end
end
