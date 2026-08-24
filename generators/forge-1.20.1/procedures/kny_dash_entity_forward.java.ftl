if (${input$entity} instanceof net.minecraft.world.entity.LivingEntity _knyLiving) {
    net.minecraft.world.phys.Vec3 _knyLook = _knyLiving.getLookAngle().normalize();
    com.lerdorf.kimetsunoyaibamultiplayer.breathingtechnique.MovementHelper.setVelocity(_knyLiving, _knyLook.scale(Math.max(0.0D, ${input$blocks}) * 0.35D));
}
