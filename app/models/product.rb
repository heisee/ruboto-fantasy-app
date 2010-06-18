class Product < RubutoRecord
  #should the attributes defined here or read from the db (as in ActiveRecord)?
  #I think, the migration mechanisms of ActiveRecord should work pretty good in Androids
  #But this probably depends on if there's an existign ORM userd or written from scratch

  string :name
  float :price
  string :category
  

  stored_in :preference #alternative :sqlite
  
  def price_in_euro
    #some biz logic, e.g.convert the price from one currency to another
  end

end
