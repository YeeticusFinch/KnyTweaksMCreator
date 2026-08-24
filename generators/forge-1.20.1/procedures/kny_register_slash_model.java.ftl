com.lerdorf.kimetsunoyaibamultiplayer.api.KnYAPI.registerSlashModel(String.valueOf(${input$sword_item_path}), String.valueOf(${input$model_key}));
if (!String.valueOf(${input$namespace}).isBlank()) {
    com.lerdorf.kimetsunoyaibamultiplayer.api.KnYAPI.registerSlashModelNamespace(String.valueOf(${input$model_key}), String.valueOf(${input$namespace}));
}
