module HomeTagsHelper
  def buid_price(price)
    "#{price.to_s} #{t('currency')}"
  end

  def build_product(description, old_price, price, image_name)
    content_tag(:div, class: 'product') do
      content_tag(:div, nil, class: 'image') do
        image_tag image_name
      end +
      content_tag(:div, description, class: 'description') +
      content_tag(:div, "#{old_price} #{t('currency')}", class: 'old-price') +
      content_tag(:div, "#{price} #{t('currency')}", class: 'price')
    end
  end
end