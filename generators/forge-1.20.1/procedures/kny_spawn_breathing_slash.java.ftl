if (${input$entity} instanceof net.minecraft.world.entity.LivingEntity _knyLiving && !_knyLiving.level().isClientSide) {
    com.lerdorf.kimetsunoyaibamultiplayer.network.ModNetworking.sendToAllClients(
        new com.lerdorf.kimetsunoyaibamultiplayer.network.packets.RawSlashRenderPacket(
            String.valueOf(${input$slash_type}),
            (float) ${input$angle},
            _knyLiving.getUUID(),
            "slash",
            new net.minecraft.world.phys.Vec3(${input$offset_x}, ${input$offset_y}, ${input$offset_z})
        )
    );
}
