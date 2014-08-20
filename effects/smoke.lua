return {
  ["smoke1"] = {
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
        pos                = [[-1, -3, 0]],
        size               = 1,
        sizegrowth         = 1,
        speed              = [[0, 1 0, 0]],
        texture            = [[humo]],
      },
    },
  },
  ["smoke2"] = {
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
        pos                = [[0, 0, 0]],
        size               = 1,
        sizegrowth         = 10,
        speed              = [[0, 1 0, 0]],
        texture            = [[humo]],
      },
    },
  },
}
