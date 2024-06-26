data:extend(
{
  {
    type = "item",
    name = "frac-pump",
    icon = "__advanceder-oil__/graphics/frac-pump.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "b[fluids]-b[frac-pump]",
    place_result = "frac-pump",
    stack_size = 20
  },
    
  {
    type = "recipe",
    name = "frac-pump",
    energy_required = 20,
    ingredients =
    {
      {"iron-gear-wheel", 10},
      {"electronic-circuit", 10},
      {"engine-unit", 2},
      {"pipe", 10},
      {"copper-plate", 15},
    },
    result = "frac-pump",
    enabled = false
  },
    
  {
    type = "mining-drill",
    name = "frac-pump",
    icon = "__advanceder-oil__/graphics/frac-pump.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "frac-pump"},
    resource_categories = {"basic-fluid"},
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source = {type = "electric"},
    fluid_box =
    {
      base_area = 1,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      },
    },
    energy_usage = "105kW",
    mining_speed = 1,
    mining_power = 2,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 2
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    base_picture =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/pumpjack/pumpjack-base.png",
        priority = "extra-high",
        width = 114,
        height = 113,
        shift = {0.1875, -0.03125}
      }
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = {0.125, -0.71875},
        filename = "__base__/graphics/entity/pumpjack/pumpjack-animation.png",
        frame_count = 40,
        animation_speed = 0.5
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/pumpjack.ogg" },
      apparent_volume = 1.5,
    },
    fast_replaceable_group = "pumpjack"
  },
}
)
