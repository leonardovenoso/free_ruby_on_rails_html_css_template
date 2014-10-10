module CustomTagsHelper

  def buid_price(price)
    "#{price.to_s} #{t('currency')}"
  end

end