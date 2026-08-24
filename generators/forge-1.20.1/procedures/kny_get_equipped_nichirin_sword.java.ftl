(${input$entity} instanceof net.minecraft.world.entity.LivingEntity _knyLiving
    && com.lerdorf.kimetsunoyaibamultiplayer.api.SwordRegistry.getSword(_knyLiving.getMainHandItem().getItem()) != null
        ? _knyLiving.getMainHandItem()
        : net.minecraft.world.item.ItemStack.EMPTY)
