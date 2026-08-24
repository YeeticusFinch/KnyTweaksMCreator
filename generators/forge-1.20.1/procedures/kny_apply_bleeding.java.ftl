if (${input$entity} instanceof net.minecraft.world.entity.LivingEntity _knyLiving) {
    com.lerdorf.kimetsunoyaibamultiplayer.events.BleedingHandler.applyOrRefreshBleeding(_knyLiving, (int) Math.round(${input$ticks}), (int) Math.round(${input$level}));
}
