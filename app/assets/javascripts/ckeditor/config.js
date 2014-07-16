if(typeof(CKEDITOR) != 'undefined')
{
 CKEDITOR.editorConfig = function(config) {
   config.uiColor = "#ffffff";
   //config.colorButton_enableMore = false;
   config.toolbar = [
    [ 'Bold', 'Italic', 'Underline', 'Strike' ],
    [ 'NumberedList', 'BulletedList', 'HorizontalRule' ],
    [ 'Blockquote' ],
    [ 'Undo', 'Redo' ],
    [ 'Source' ],
    ['Link','Unlink','Anchor'],
    ['Image','Flash','Smiley'],
    ['Styles','Font','FontSize'],
    ['TextColor','BGColor']
 ];
}
} else{
  console.log("ckeditor not loaded")
}

