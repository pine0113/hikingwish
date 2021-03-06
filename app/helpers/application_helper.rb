module ApplicationHelper
  def jiggle
    'I can jiggle'
  end

  def hiking_select
    [["其他路線", "1"],
     ["玉山", "2"],
     ["嘉明湖", "3"],
     ["松蘿湖", "4"],
     ["雪山", "5"],
     ["水漾森林", "6"],
     ["合歡北峰", "7"]]
  end

  def howmanydays(numberofday_id)
    case numberofday_id
    when 1 
      "一天一夜"
    when 2 
      "兩天一夜"
    when 3 
      "兩天兩夜"
    when 4 
      "三天兩夜"
    when 5 
      "三天三夜"
    when 6 
      "四天三夜"
    when 7 
      "四天四夜"
    when 8 
      "五天四夜"
    when 9 
      "五天五夜"
    else
      "不限"
    end
  end

  def howmanydays_select
    [["一天一夜", "1"],
     ["兩天一夜", "2"],
     ["兩天兩夜", "3"],
     ["三天兩夜", "4"],
     ["三天三夜", "5"],
     ["四天三夜", "6"],
     ["四天四夜", "7"],
     ["五天四夜", "8"],
     ["五天四夜", "9"],
     ["不限", "10"]
    ]
  end

  def transport_mode_show(transport_mode)
    case transport_mode 
    when 1  
      "皆可"
    when 2
      "共乘 油錢分擔"
    when 3
      "包車"
    else
      "大眾運輸"
    end
  end

  def transport_mode_select
    options_for_select([
                        ["皆可", "1"],
                        ["共乘 油錢分擔", "2"],
                        ["包車", "3"],
                        ["大眾運輸", "4"]])
  end 

  def fee_mode_show(fee_mode)
    case fee_mode 
    when 1
      "未定"
    when 2
      "預先收費，不退不補"
    when 3
      "預先收費，多退少補"
    else 
      "結算後均攤"
    end
  end

  def fee_mode_select
    options_for_select([["未定", "1"],
                        ["預先收費，不退不補", "2"],
                        ["預先收費，多退少補", "3"],
                        ["結算後均攤", "4"]])
  end 

  def food_mode_show(food_mode)
    case food_mode
    when  1
      "未定"
    when 2
      "公糧公炊 費用分擔"
    else
      "包餐"
    end
  end

  def food_mode_select
    options_for_select([["未定", "1"],
                      ["公糧公炊 費用分擔", "2"],
                      ["包餐", "3"]])
  end 

  def wish_hiking_chart(wish_hiking_top_name)
    wish_hiking_top = Wish.top(:hiking_id, 8)
    wish_hiking_top_name = {"其他路線" => wish_hiking_top[1],
                            "武陵一秀" => wish_hiking_top[2],
                            "武陵二秀" => wish_hiking_top[3],
                            "武陵三秀" => wish_hiking_top[4],
                            "武陵四秀" => wish_hiking_top[5],
                            "武陵五秀" => wish_hiking_top[6]}
    wish_hiking_top_name = wish_hiking_top_name.compact
  end

  def wish_hikingtime_chart(wish_hikingtime_top_name)
    wish_hikingtime_top = Wish.top(:hiking_id, 8)
    wish_hikingtime_top_name = {"其他路線" => wish_hiking_top[1],
                                "武陵一秀" => wish_hiking_top[2],
                                "武陵二秀" => wish_hiking_top[3],
                                "武陵三秀" => wish_hiking_top[4],
                                "武陵四秀" => wish_hiking_top[5],
                                "武陵五秀" => wish_hiking_top[6]}
    wish_hiking_top_name = wish_hiking_top_name.compact
  end

  def plan_image(plan)
      @image = plan.image_url
      if @image.nil?
          @plan_image = image_tag("/uploads/plan/image/default.jpg", alt: plan.name, width: 200, height: 150)
      else
          @plan_image = image_tag(@image, alt: plan.name, width: 200, height: 150)
      end
      return @plan_image
  end

end