class OrderObserver < ActiveRecord::Observer

  def after_create order
    Activity.create({
      :activity_type => 'create',
      :target => order,
      :data => nil
    })
  end

  def after_finish_draft_and_send order, transition
    Activity.create({
      :activity_type => 'finish_draft_and_send',
      :target => order,
      :data => nil
    })
  end

  def after_confirm order, transition
    Activity.create({
      :activity_type => 'confirm',
      :target => order,
      :data => nil
    })
  end

  def after_cancel order, transition
    Activity.create({
      :activity_type => 'cancel',
      :target => order,
      :data => nil
    })
  end

end
