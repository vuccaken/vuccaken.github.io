module Jekyll
  class DataSetting < Generator
    def generate(site)

# - - - - - - - - - - - - - - - - - - - - - -

members = site.collections["members"].docs

members.each do |m|
  name =  m.data["slug"]
  year =  m.data["admissions"]["bachelor"]["year"]
  year_reverse = 2100 - year
  sort_key = year_reverse.to_s + '_' + name
  m.data["sort_key"] = sort_key
end

members.sort_by! {|m| m.data["sort_key"]}

# - - - - - - - - - - - - - - - - - - - - - -

    end # of def
  end
end
