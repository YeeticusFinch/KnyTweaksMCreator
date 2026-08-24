if (${input$entity} instanceof net.minecraft.world.entity.LivingEntity _knySource) {
    net.minecraft.world.level.Level _knyLevel = _knySource.level();
    net.minecraft.world.phys.AABB _knyBox = _knySource.getBoundingBox().inflate(${input$radius});
    for (net.minecraft.world.entity.LivingEntity _knyTarget : _knyLevel.getEntitiesOfClass(net.minecraft.world.entity.LivingEntity.class, _knyBox, e -> e != _knySource && e.isAlive())) {
<#if field$scaling == "dont_scale">
        com.lerdorf.kimetsunoyaibamultiplayer.Damager.hurt(_knySource, _knyTarget, (float) ${input$damage}, ${field$iframes}, true, false);
<#elseif field$scaling == "force_scale">
        com.lerdorf.kimetsunoyaibamultiplayer.Damager.hurt(_knySource, _knyTarget, (float) ${input$damage}, ${field$iframes}, false, true);
<#else>
        com.lerdorf.kimetsunoyaibamultiplayer.Damager.hurt(_knySource, _knyTarget, (float) ${input$damage}, ${field$iframes});
</#if>
    }
}
