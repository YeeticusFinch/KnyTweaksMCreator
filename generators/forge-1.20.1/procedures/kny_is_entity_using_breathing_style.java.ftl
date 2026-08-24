(${input$entity} instanceof net.minecraft.world.entity.LivingEntity _knyLiving
    && com.lerdorf.kimetsunoyaibamultiplayer.api.SwordRegistry.getSword(_knyLiving.getMainHandItem().getItem()) != null
    && String.valueOf(${input$style_id}).equals(com.lerdorf.kimetsunoyaibamultiplayer.api.SwordRegistry.getSword(_knyLiving.getMainHandItem().getItem()).getStyleId()))
