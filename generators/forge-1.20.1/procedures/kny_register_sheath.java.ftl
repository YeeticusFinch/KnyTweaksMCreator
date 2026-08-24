{
    net.minecraft.world.item.Item _knySword = net.minecraftforge.registries.ForgeRegistries.ITEMS.getValue(new net.minecraft.resources.ResourceLocation(String.valueOf(${input$sword_item_id})));
    net.minecraft.world.item.Item _knySheath = net.minecraftforge.registries.ForgeRegistries.ITEMS.getValue(new net.minecraft.resources.ResourceLocation(String.valueOf(${input$sheath_item_id})));
    if (_knySword != null && _knySheath != null && net.minecraftforge.fml.loading.FMLEnvironment.dist.isClient()) {
        com.lerdorf.kimetsunoyaibamultiplayer.client.SwordSheathRegistry.registerSheath(_knySword, _knySheath, ${field$persists});
    }
}
