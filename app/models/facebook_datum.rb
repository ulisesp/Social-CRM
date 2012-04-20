class FacebookDatum < ActiveRecord::Base
  belongs_to :client
  def self.get_fan_growth_percentage(datum)
    (datum.new_fans.to_f/(datum.total_fans-datum.new_fans).to_f)*100
  end
  def self.get_print_percentage(datum)
    if datum.id == all.first.id
      -17.03
    else
      @prev_id = datum.id-1
      while find_by_id(@prev_id)==nil
        @prev_id -=1
      end
      ((datum.prints.to_f-find_by_id(@prev_id).prints.to_f)/find_by_id(@prev_id).prints.to_f)*100
    end
  end
  def self.get_interactions_percentage(datum)
    if datum.id == all.first.id
      -19.94
    else
      @prev_id = datum.id-1
      while find_by_id(@prev_id)==nil
        @prev_id -=1
      end
      ((datum.total_interactions.to_f-find_by_id(@prev_id).total_interactions.to_f)/find_by_id(@prev_id).total_interactions.to_f)*100
    end

  end
  def self.get_total_investment(datum)
    datum.agency_investment.to_f+datum.new_stock_investment.to_f+datum.anno_investment.to_f
  end
  def self.get_cpm(datum)
    (datum.agency_investment.to_f+datum.new_stock_investment.to_f)/(datum.prints.to_f+datum.total_interactions)*1000
  end
  def self.get_fan_cost(datum)
    (datum.agency_investment.to_f+datum.new_stock_investment.to_f+datum.anno_investment.to_f)/datum.new_fans.to_f
  end

end
