module Jekyll
  class DataSetting < Generator
    def generate(site)

# - - - - - - - - - - - - - - - - - - - - - -

## メンバーカードの順番をソート
##   現役 -> OB
##   卒業年 降順 -> 入学年 降順 -> ファイル名 昇順

members = site.collections["members"].docs

members.each do |m|
  name =  m.data["slug"]
  year =  m.data["admissions"]["bachelor"]["year"]
  # year_reverse = 2100 - year
  year_reverse = format("%04<number>d", number: 3000 - year)

  finish_year = m.data.dig("admissions", "finish", "year")
  if finish_year.nil? then
    finish_year_reverse = format("%04<number>d", number: 0)
  else
    finish_year_reverse = format("%04<number>d", number: 3000 - finish_year)
  end

  sort_key = finish_year_reverse + '-' + year_reverse + '_' + name
  m.data["sort_key"] = sort_key
end

members.sort_by! {|m| m.data["sort_key"]}

# - - - - - - - - - - - - - - - - - - - - - -

    end # of def
  end
end
