$summon minecraft:text_display -29.999 -1.0 0.5 {\
    text:[{text:"$(text)",bold:$(bold),underlined:$(unl),color:$(color)}],\
    transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[$(scale)f,$(scale)f,$(scale)f]},Rotation:[-90,0],\
    Passengers:[{id:"interaction",width:$(width),height:$(height),Tags:["lobby","lobby.credit","lobby.credit.interact","lobby.credit.interact.$(id)"],data:{onclick:$(onclick)}}],Tags:["lobby","lobby.text.credit","lobby.credit"],teleport_duration:1,"background":0}
kill @n[type=interaction,tag=lobby.credit.interact.]