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

    get(/.*/) do
      file_path = File.join(settings.root, '../public', request.path, 'index.html')
      # p file_path
      if File.exist?(file_path)
        send_file(file_path)
      else
        pass
      end
    end

    # トップページ
    get '/' do
      erb :top, layout: :default
    end
  end
end
