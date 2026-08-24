{
    net.minecraft.world.item.Item _knySword = net.minecraftforge.registries.ForgeRegistries.ITEMS.getValue(new net.minecraft.resources.ResourceLocation(String.valueOf(${input$sword_item_id})));
    net.minecraft.world.item.Item _knyDisplay = net.minecraftforge.registries.ForgeRegistries.ITEMS.getValue(new net.minecraft.resources.ResourceLocation(String.valueOf(${input$display_item_id})));
    if (_knySword != null && _knyDisplay != null && net.minecraftforge.fml.loading.FMLEnvironment.dist.isClient()) {
        com.lerdorf.kimetsunoyaibamultiplayer.client.SwordSheathRegistry.registerSheathDisplayOverride(_knySword, _knyDisplay);
    }
}
