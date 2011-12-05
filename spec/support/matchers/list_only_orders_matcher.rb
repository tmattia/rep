RSpec::Matchers.define :list_only_orders do |status|

  match do |page|
    page.should have_css(".orders .order_status.#{status}")
    ([:draft, :to_be_confirmed, :confirmed, :cancelled, :rejected] - [status]).each do |other_status|
      page.html.should_not have_css(".orders .order_status.#{other_status}")
    end
  end

  failure_message_for_should do |page|
    "expected #{page.html} to include a list of only #{status} orders"
  end

  failure_message_for_should_not do |page|
    "expected #{page.html} not to include a list of only #{status} orders"
  end

  description do
    "expected the page to list only #{status} orders"
  end


end
