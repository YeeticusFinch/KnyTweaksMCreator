if (${input$entity} instanceof net.minecraft.world.entity.LivingEntity _knyLiving) {
    com.lerdorf.kimetsunoyaibamultiplayer.api.KnYAPI.setGuardState(_knyLiving, (int) Math.round(${input$damage}), (int) Math.round(${input$guard}), (int) Math.round(${input$attack}));
}
