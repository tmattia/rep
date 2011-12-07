class ClientObserver < ActiveRecord::Observer

  def after_create client
    Activity.create({
      :activity_type => 'create',
      :target => client,
      :data => nil
    })
  end

  def after_update client
    Activity.create({
      :activity_type => 'update',
      :target => client,
      :data => nil
    })
  end

end
