class OrderItemsController < InheritedResources::Base

  belongs_to :order

  def create
    create! do |success, failure|
      success.html do
        redirect_to params[:commit] == I18n.t('label.order_item.save_and_add_another') ?
          new_order_order_item_path(@order_item.order) :
          parent_url
      end
    end
  end

  def update
    update!{ parent_url }
  end

  def destroy
    destroy!{ parent_url }
  end

  protected
  def add_breadcrumb
    breadcrumbs.add 'label.order.plural', orders_path
  end

end
