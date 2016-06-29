//= require codemirror
//= require codemirror/addons/edit/continuelist
//= require codemirror/modes/xml
//= require codemirror/modes/markdown
//= require marked
//= require jquery.markdownify


var build_editor = function(el){
  var el_id = $(el).attr("id");
  var menu_editor = $("<div class='markdownify-menu' data-target='" + el_id + "'></div>");
  var preview_element = $("<div class='" + el_id + "-preview'></div>");
  var btn_preview_link = $("<a href='javascript:void(0)' class='btn--preview' data-target='" + el_id + "'>Preview</a>");

  var h1_link = $("<a href='javascript:void(0)' class='btn--insert bold' data-prefix='# '><span class='markdownify-menu-h1'>h1</span></a>");
  var h2_link = $("<a href='javascript:void(0)' class='btn--insert bold' data-prefix='## '><span class='markdownify-menu-h2'>h2</span></a>");
  var h3_link = $("<a href='javascript:void(0)' class='btn--insert bold' data-prefix='### '><span class='markdownify-menu-h3'>h3</span></a>");

  var ul_link = $("<a href='javascript:void(0)' class='btn--insert' data-prefix='* '><span>Liste *</span></a>");
  var ol_link = $("<a href='javascript:void(0)' class='btn--insert' data-prefix='1. '><span>Liste 1.</span></a>");

  var italic_link = $("<a href='javascript:void(0)' class='btn--insert' data-prefix='*' data-suffix='*'><span>Italic</span></a>");
  var bold_link = $("<a href='javascript:void(0)' class='btn--insert' data-prefix='**' data-suffix='**'><span>Gras</span></a>");

  $(menu_editor).append(h1_link);
  $(menu_editor).append(h2_link);
  $(menu_editor).append(h3_link);

  $(menu_editor).append(ul_link);
  $(menu_editor).append(ol_link);

  $(menu_editor).append(italic_link);
  $(menu_editor).append(bold_link);



  $(menu_editor).append(btn_preview_link);
  $(menu_editor).insertBefore("#" + el_id);
  $(preview_element).insertBefore("#" + el_id);
  $("#" + el_id).markdownify();
};
