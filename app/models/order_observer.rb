class OrderObserver < ActiveRecord::Observer

  def after_create order
    Activity.create({
      :activity_type => 'create',
      :target => order,
      :data => nil
    })
  end

end
