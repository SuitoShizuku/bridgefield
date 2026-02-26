execute store success score $treasure.break bf run clear @a barrier[custom_data~{treasure.break:true}]
execute if score $treasure.break bf matches 1 run function core:stage/chest/break/check