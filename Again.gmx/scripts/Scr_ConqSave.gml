///Scr_ConqSave(ini str save, title);
if(global.dsl_cq1[|ds_list_find_index(global.dsl_cq2, argument[1])] == 0){
    global.dsl_cq1[|ds_list_find_index(global.dsl_cq2, argument[1])] = 1;
    ini_open("conq.ini");
        ini_write_real("conq", argument[0], 1);
    ini_close();
    Scr_ConqPOP(argument[1]);
}
