module UserPc
  # TODO: 名前空間とHelper名が重複しているので、適当な命名を考える
  module UserPcHelper
    def image(property, model)
      image_tag(model.image_path, class: property[:class]) if model.image_path.present?
    end
  end
end