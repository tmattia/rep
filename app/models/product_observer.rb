class ProductObserver < ActiveRecord::Observer

  def after_create product
    Activity.create({
      :activity_type => 'create',
      :target => product,
      :data => nil
    })
  end

  def after_update product
    Activity.create({
      :activity_type => 'update',
      :target => product,
      :data => nil
    })
  end

end

