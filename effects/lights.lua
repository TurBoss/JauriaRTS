-- lightning_stormbolt

return {
  ["light1"] = {
    centerflare = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        alwaysvisible      = true,
        heat               = 10,
        heatfalloff        = 1.3,
        maxheat            = 20,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1,
        sizegrowth         = 5,
        speed              = [[0, 1 0, 0]],
        texture            = [[flare]],
      },
    },
  },
  ["light2"] = {
    centerflare = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        alwaysvisible      = true,
        heat               = 20,
        heatfalloff        = 1.3,
        maxheat            = 20,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1,
        sizegrowth         = 5,
        speed              = [[0, 1 0, 0]],
        texture            = [[flare]],
      },
    },
  },
}

