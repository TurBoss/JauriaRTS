model = {
   radius = 14,
   height = 60,
   midpos = {0,14,0}, -- model center offset
   --[[tex1 = "corraid1_512.dds", -- same as S3O texture 1
   tex2 = "corraid2_512.dds", -- same as S3O texture 2
   invertteamcolor = true, -- invert tex1 alpha channel
   fliptextures = true, -- turn textures upside down
   pieces = {
      root = {
         rotate = {-90,0,0},
         offset = {10,0,0}
      },
      turret = {
         parent = "chassis",
         rotateZ = 30,
         offsetY = 20,
      }
   }]]--
}
return model
