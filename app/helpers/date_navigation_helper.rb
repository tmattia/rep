# encoding: utf-8

module DateNavigationHelper

  def date_hash date
    {
      :day => date.day,
      :month => date.month,
      :year => date.year
    }
  end

  def today
    date_hash Date.today
  end

  def link_to_prev_day date, path
    link_to "« #{l(date.prev_day)}", path.call(date_hash(date.prev_day)), :class => 'prev'
  end

  def link_to_next_day date, path
    link_to "#{l(date.next_day)} »", path.call(date_hash(date.next_day)), :class => 'next'
  end

  def link_to_prev_next_days date, path
    "<nav class='prev-next'>
       #{link_to_prev_day @date, path}
       #{link_to_next_day @date, path}
     </nav>".html_safe
  end

end
