module Tiles
  
  GLOBAL_TILE_SIZE = 16
  
  #Id del tile en imagen
  Plain    = {:tileset_index => 0, :mov_cost => 1, :units => ["Soldier", "Tank"]}
  Mountain = {:tileset_index => 1, :mov_cost => 3, :units => ["Soldier"]}
  Water    = {:tileset_index => 2, :mov_cost => 1, :units => ["Ship"]}
  
end