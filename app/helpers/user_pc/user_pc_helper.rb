module UserPc
  # TODO: 名前空間とHelper名が重複しているので、適当な命名を考える
  module UserPcHelper
    def image(property, model)
      '<img class="#{property[:class]}" src="#{model.image_path}">'.html_safe if model.image_path.present?
    end
  end
end