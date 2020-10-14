sass_dir = '_sass/vendor'
assets_dir = 'assets/vendor'

task default: %w[copy_gemified_assets]

task :clean do
  puts FileUtils.rm_rf(sass_dir)
  puts FileUtils.rm_rf(assets_dir)
end

task :copy_gemified_assets do
  ['bootstrap', 'jquery-rails', 'popper.js'].each do |asset|
    puts "----------------bundle show #{asset}---------"
    path = `bundle info #{asset} --path`.strip()
    puts "=================#{path}======================"
    if Dir.exists?(path + '/assets')
      path += '/assets'
    elsif Dir.exists?(path + '/vendor/assets')
      path += '/vendor/assets'
    else
      path = nil
    end

    if path
      resource_paths = Dir.glob(path + '/*')

      sass_paths = resource_paths.select{ |file_path| file_path.end_with?('/stylesheets')}
      unless sass_paths.empty?
        sass_target_dir = [ sass_dir, asset ].join('/')
        unless Dir.exists?(sass_target_dir)
          FileUtils.mkdir_p(sass_target_dir)
        end
        FileUtils.cp_r(sass_paths, sass_target_dir)
      end

      assets_paths = resource_paths.reject{ |file_path| file_path.end_with?('/stylesheets')}
      unless assets_paths.empty?
        assets_target_dir = [ assets_dir, asset ].join('/')
        unless Dir.exists?(assets_target_dir)
          FileUtils.mkdir_p(assets_target_dir)
        end
        FileUtils.cp_r(assets_paths, assets_target_dir)
      end
    end
  end
end