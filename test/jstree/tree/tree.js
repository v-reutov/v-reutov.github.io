$(function () {
    $('#tree').jstree({
        "core" : {
            "animation" : 0,
            "check_callback" : true,
            "themes" : { "stripes" : true },
            'data' : {
                'url' : './tree/ajax_data.json',
                "dataType" : "json",
                'data' : function (node) {
                    return { 'id' : node.id };
                }
            }
        },
        "types" : {
            "#" : {
                "max_children" : 1,
                "max_depth" : 4,
                "valid_children" : ["root"]
            },
            "root" : {
                "icon" : "./tree/res/root_icon.png",
                "valid_children" : ["default", "check"]
            },
            "check" : {
                "valid_children" : ["default"]
            },
            "default" : {
                "valid_children" : ["default"]
            }
        },
        "checkbox" : {
            "keep_selected_style" : false
        },
        "conditionalselect" : function (node) {
            return node.type === "check"
        },
        "plugins" : [
            "contextmenu", "types", "wholerow", "checkbox", "conditionalselect"
        ]
    });
});
function tree_expand_all() {
    $('#tree').jstree('open_all');
};
function tree_collapse_all() {
    $('#tree').jstree('close_all');
};
