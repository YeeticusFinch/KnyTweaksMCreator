if (${input$entity} instanceof net.minecraft.world.entity.player.Player _knyPlayer) {
    net.minecraft.world.item.ItemStack _knyHeld = _knyPlayer.getMainHandItem();
    if (!_knyHeld.isEmpty()) {
        com.lerdorf.kimetsunoyaibamultiplayer.util.PlayerAbilityCooldowns.addCooldown(_knyPlayer, _knyHeld.getItem(), (int) Math.round(${input$seconds} * 20.0D));
    }
}
