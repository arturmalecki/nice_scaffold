class NiceScaffoldGenerator < Rails::Generator::NamedBase
  attr_accessor(
    :model_class_name, 
    :controller_class_name, 
    :model_name, 
    :controller_name,
    :namespace
  )

  def namespace
    @namespace || []
  end

  def initialize(runtime_args, runtime_options = {})
    super
    self.model_class_name = class_name
    self.model_name = file_path
    self.controller_class_name = class_name.pluralize
    self.controller_name = plural_name
  end

  def manifest
    record do |m|
      # Controller, helper, views, and test directories.
      m.directory("app/models")
      m.directory(File.join("app/controllers", namespace))
      m.directory(File.join("app/helpers", namespace))
      m.directory(File.join("app/views", namespace, plural_name))

      # Controller
      if(has_controller?)
        m.template("controller.rb", File.join("app/controllers/", namespace, "#{controller_name}_controller.rb"))
      end

      # Model
      if(has_model?)
        m.template("model.rb", "app/models/#{model_name}.rb")
      end

      # Views
      if(has_controller?)
        %w(index show new edit _form).each do |view|
          m.template(File.join("views", "#{view}.html.haml.rb"), File.join("app/views", namespace, plural_name, "#{view}.html.haml"))
        end
      end
    end
  end


  def has_model?
    !options[:skip_model]
  end

  def has_controller?
    !options[:skip_controller]
  end

  def has_namespace?
    !namespace.blank?
  end

  protected
    def banner
      "Usage: #{$0} nice_scaffold ModelName"
    end

    def add_options!(opt)
      opt.separator("")
      opt.separator("Options:")
      opt.on("--skip-model", "Skip generating model"){ |v| options[:skip_model] = true }
      opt.on("--skip-controller", "Skip generatint controller"){ |v| options[:skip_controller] = true }
      opt.on("--admin-namespace", "Specify namespace to Admin"){ |v| self.namespace = ["admin"] }
    end
end
