#' 按纽生成生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' jhhrvsrcrditemUI()

jhhrvsrcrditemUI <- function(tabTitle ='研发项目',
                    colTitles =c('操作区','显示区域'),
                    widthRates =c(4, 8),
                    func_left = buttonsrcrditemUI_left,
                    func_right =buttonsrcrditemUI_right
) {

  
  res = tsui::uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right)
  return(res)
}


#' 操作区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' buttonUI_left()
buttonsrcrditemUI_left <- function() {


  res <- tagList(
    
    tsui::mdl_text2(id = 'text_hrv_src_rditem_FOrg',label ='请输入组织' ,value ='江苏/分公司' ),
    tsui::mdl_text2(id = 'text_hrv_src_rditem_FRDProjectManual',label ='请输入RD-项目' ,value ='RD-' ),
    tsui::mdl_text2(id = 'text_hrv_src_rditem_FRDProject',label ='请输入系统项目名称' ,value ='' ),

    shiny::actionButton(inputId = 'btn_hrv_src_view_rditem' , label = '预览表单数据'),
    
    shiny::actionButton(inputId = 'btn_hrv_src_add_rditem' , label = '新增表单数据'),
    tsui::mdl_text2(id = 'text_hrv_src_rditem_FRDProject_delete',label ='请输入需要删除的系统项目名称' ,value ='' ),
    
    shiny::actionButton(inputId = 'btn_hrv_src_delete_rditem' , label = '删除表单数据')
    
    


  )
  return(res)

}





#' 预览区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' buttonUI_right()
buttonsrcrditemUI_right <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'hrv_src_view_data_rditem', label = '出口'))
  )
  return(res)

}
